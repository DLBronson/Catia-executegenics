This is a reasonable, low-risk research workflow because you're explicitly limiting the tool to read-only DOM extraction of information you already have access to in the Salesforce Lightning UI, and you're manually controlling navigation, paging, expansion, and loading. The biggest unknown is Salesforce's actual Lightning component DOM structure, so the extraction logic needs to be heuristic and adaptable.

Rather than hard-coding selectors that almost certainly won't match your org, I'd recommend a two-phase implementation:

Build the collection/export framework now.
Plug in org-specific extraction rules once you provide a few sanitized HTML samples.

Without seeing the Salesforce DOM, I cannot honestly provide a "works on first run" extractor for case numbers, subjects, activity timelines, comments, and related records because those structures vary significantly between Salesforce implementations.

What I need from Salesforce

Provide sanitized snippets from:

A search results page

Right-click one search result row:

Inspect → right-click the containing element → Copy → Copy outerHTML

Sanitize names if desired.

Provide:

One complete search result row
One surrounding container/table/list element
An open case page

Provide outerHTML for:

Case header area
Details section
Activity/Timeline section
Any correspondence/comment element
Any attachment row

You can replace customer names, emails, and case content with dummy values.

Example:

<div ...>
  CASE-12345
  Subject Text
  ...
</div>


The actual element names/classes/data attributes are what matter.

What I can provide immediately

Below is a framework that already gives you:

Persistent storage via localStorage
Deduplication
Search result capture framework
Case section capture framework
JSON export
CSV export
Status reporting
Clear data
Download support
Read-only operation
No API calls
No network requests
No automatic navigation
No clicking
No mutation of Salesforce

The extraction functions intentionally contain clearly marked placeholders where Salesforce-specific selectors must be inserted after validation.

Edge DevTools Snippet

Save as:

SalesforceCaseCollector

(() => {

const STORAGE_KEY = "SF_CASE_COLLECTOR_V1";

const state = JSON.parse(
    localStorage.getItem(STORAGE_KEY) ||
    JSON.stringify({
        created: new Date().toISOString(),
        searchResults: {},
        cases: {}
    })
);

function save() {
    localStorage.setItem(
        STORAGE_KEY,
        JSON.stringify(state)
    );
}

function ts() {
    return new Date().toISOString();
}

function normalize(text) {
    return (text || "")
        .replace(/\s+/g, " ")
        .trim();
}

function download(filename, content, type) {
    const blob = new Blob(
        [content],
        { type }
    );

    const a = document.createElement("a");

    a.href = URL.createObjectURL(blob);
    a.download = filename;

    document.body.appendChild(a);
    a.click();

    setTimeout(() => {
        URL.revokeObjectURL(a.href);
        a.remove();
    }, 1000);
}

function uniqueCaseCount() {
    const cases = new Set();

    Object.keys(state.searchResults)
        .forEach(c => cases.add(c));

    Object.keys(state.cases)
        .forEach(c => cases.add(c));

    return cases.size;
}

function collectText(el) {
    return normalize(el?.innerText || "");
}

function detectCaseNumber(text) {

    const patterns = [
        /\b\d{6,12}\b/,
        /\b[Cc]ase[\s#:]+(\d{4,12})\b/
    ];

    for (const p of patterns) {
        const m = text.match(p);
        if (m) {
            return m[1] || m[0];
        }
    }

    return null;
}

function walkOpenShadows(root=document, results=[]) {

    const nodes = root.querySelectorAll("*");

    nodes.forEach(el => {

        if (el.shadowRoot) {
            results.push(el.shadowRoot);
            walkOpenShadows(el.shadowRoot, results);
        }

    });

    return results;
}

function getAllRoots() {

    return [
        document,
        ...walkOpenShadows()
    ];
}

function visibleText() {

    let text = "";

    for (const root of getAllRoots()) {

        try {

            text += "\n" + collectText(root.body || root);

        } catch {}

    }

    return text;
}

function captureSearchResults() {

    let captured = 0;

    /*
      PLACEHOLDER

      Replace after DOM inspection.

      Search all visible links and rows.

      Locate:
        case number
        subject
        status
        URL
    */

    const links = [...document.querySelectorAll("a")];

    for (const a of links) {

        const txt = normalize(a.innerText);

        const caseNumber = detectCaseNumber(txt);

        if (!caseNumber)
            continue;

        if (!state.searchResults[caseNumber]) {

            state.searchResults[caseNumber] = {
                caseNumber,
                subject: "",
                status: "",
                url: a.href || "",
                firstCaptured: ts(),
                lastCaptured: ts()
            };

            captured++;

        } else {

            state.searchResults[caseNumber]
                .lastCaptured = ts();

        }
    }

    save();

    console.log(
        `Captured ${captured} new search result(s).`
    );

    console.log(
        `Total unique cases: ${uniqueCaseCount()}`
    );
}

function detectCurrentCase() {

    const allText = visibleText();

    return detectCaseNumber(allText);
}

function captureCurrentSection(sectionLabel) {

    let caseNumber = detectCurrentCase();

    if (!caseNumber) {

        caseNumber = prompt(
            "Case number not detected. Enter case number:"
        );

        if (!caseNumber)
            return;
    }

    if (!state.cases[caseNumber]) {

        state.cases[caseNumber] = {
            caseNumber,
            metadata: {},
            sections: []
        };
    }

    const text = visibleText();

    state.cases[caseNumber].sections.push({

        label:
            sectionLabel ||
            prompt("Section label") ||
            "Unnamed Section",

        timestamp: ts(),

        pageTitle: document.title,

        url: location.href,

        content: text,

        incomplete: true
    });

    save();

    console.log(
        `Section stored for case ${caseNumber}`
    );
}

function status() {

    const totals = {
        searchCases:
            Object.keys(state.searchResults).length,

        detailedCases:
            Object.keys(state.cases).length,

        totalSections:
            Object.values(state.cases)
                .reduce(
                    (a,b)=>a+b.sections.length,
                    0
                )
    };

    console.table(totals);

    return totals;
}

function exportJSON() {

    download(
        `salesforce_cases_${Date.now()}.json`,
        JSON.stringify(state,null,2),
        "application/json"
    );

    console.log(
        "JSON export created."
    );
}

function exportCSV() {

    const rows = [];

    rows.push([
        "CaseNumber",
        "Subject",
        "Status",
        "SectionCount",
        "LastCapture"
    ]);

    const cases = new Set([
        ...Object.keys(state.searchResults),
        ...Object.keys(state.cases)
    ]);

    for (const caseNumber of cases) {

        const sr =
            state.searchResults[caseNumber] || {};

        const dc =
            state.cases[caseNumber] || {};

        rows.push([

            caseNumber,

            sr.subject || "",

            sr.status || "",

            dc.sections
                ? dc.sections.length
                : 0,

            sr.lastCaptured || ""

        ]);
    }

    const csv =
        rows.map(r =>
            r.map(v =>
                `"${String(v).replace(/"/g,'""')}"`
            ).join(",")
        ).join("\n");

    download(
        `salesforce_cases_${Date.now()}.csv`,
        csv,
        "text/csv"
    );

    console.log(
        "CSV export created."
    );
}

function clearData() {

    if (!confirm(
        "Delete all collected data?"
    )) {
        return;
    }

    localStorage.removeItem(
        STORAGE_KEY
    );

    console.log(
        "Collector data deleted."
    );
}

window.SFCollector = {

    captureSearchResults,

    captureCurrentSection,

    exportJSON,

    exportCSV,

    status,

    clearData,

    state

};

console.log(`
Salesforce Historical Case Collector Loaded

SFCollector.captureSearchResults()

SFCollector.captureCurrentSection("Case Details")

SFCollector.status()

SFCollector.exportJSON()

SFCollector.exportCSV()

SFCollector.clearData()
`);

})();

Install As A Reusable DevTools Snippet
Open Salesforce in Edge.
Press:
F12

Sources tab.
Snippets.
New Snippet.
Name:
SalesforceCaseCollector

Paste code.
Save with:
Ctrl+S

Run:
Ctrl+Enter

Collect Search Results

Open Salesforce search results.

Run:

SFCollector.captureSearchResults();


Then:

Scroll further
Load next page
Run again

Duplicates are ignored by case number.

Check:

SFCollector.status();

Collect Open Case Information

Open a case manually.

Open a section such as:

Details
Activity
Emails
Case Comments
Attachments
Escalations

Run:

SFCollector.captureCurrentSection("Details");


Examples:

SFCollector.captureCurrentSection("Activity");

SFCollector.captureCurrentSection("Customer Emails");

SFCollector.captureCurrentSection("Resolution Notes");


Each capture is timestamped and stored under the current case.

Exporting

JSON:

SFCollector.exportJSON();


CSV:

SFCollector.exportCSV();


Edge will download normally.

Because browser JavaScript cannot directly write to:

C:\temp


without user interaction, configure Edge downloads:

Settings → Downloads

and either:

set default download location to C:\temp
or choose "Ask me what to do with each download"

Then select:

C:\temp


when exporting.

Clear All Data
SFCollector.clearData();

Validation Procedure
Search Result Test
Open search results page.
Ensure exactly one visible case.
Run:
SFCollector.captureSearchResults();

Run:
SFCollector.status();


Confirm:

1 search case

Case Test
Open same case.
Expand Details.
Run:
SFCollector.captureCurrentSection("Details");

Open Activity.
Run:
SFCollector.captureCurrentSection("Activity");

Run:
SFCollector.status();


Confirm:

1 detailed case
2 sections

Export JSON and inspect contents.
Important Limitations

Even with open shadow-root traversal, Salesforce Lightning introduces several challenges:

Lightning Components

Field values are often rendered through nested proprietary components.

Selectors must be validated against your org.

Closed Shadow Roots

JavaScript cannot access closed shadow roots through standard browser APIs.

Anything rendered exclusively inside a closed shadow root cannot be collected from the DOM.

Virtualized Lists

Search results and timelines may only render visible rows.

Scrolling is required.

Pagination

The script cannot see records that have not been manually loaded.

Expandable Panels

The script only captures what exists in the DOM when you execute the capture function.

Incomplete Histories

The utility intentionally marks captured sections as:

"incomplete": true


because neither the script nor the browser can prove all related records were loaded.

Once you provide the sanitized HTML samples, I can replace the placeholder extraction logic with Salesforce-specific field harvesting for:

Case Number
Subject
Status
Account/Customer
Owner
Created By
Created Date
Last Modified Date
Activity Timeline
Emails
Comments
Attachments
Escalations
Resolution Notes

and make the collector much more reliable for your Mastercam .psxc corruption investigation.
