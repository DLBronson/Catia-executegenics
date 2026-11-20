Project: Salesforce Historical Case Collector

Develop a standalone JavaScript utility that runs inside the Microsoft Edge Developer Tools Console (F12) while I am manually logged into Salesforce Lightning Experience.

Objective

I am a Mastercam Applications Engineer researching historical Salesforce support cases involving ".psxc" files, file corruption, failed saves, and associated crashes.

I currently have 41 Salesforce search results. I want to collect the available case details, correspondence, troubleshooting history, and resolution notes so I can identify recurring technical causes, user workflows, confirmed fixes, and preventative actions.

Environment

- Windows workstation with standard user permissions.
- Microsoft Edge and Salesforce Lightning Experience.
- No administrator privileges.
- No installed browser extensions or external libraries.
- Intended local export folder: "C:\temp".
- Salesforce access is already authenticated through my normal browser session.

1. Data collection restrictions

The utility must operate entirely on the client side.

Use standard JavaScript to inspect the currently rendered DOM, including accessible open shadow roots when necessary.

Do not use Salesforce REST APIs, GraphQL, fetch, XMLHttpRequest, WebSockets, or undocumented application endpoints.

Do not perform automated case navigation, background requests, automatic clicking, or synthetic events that cause Salesforce to load additional records.

Do not attempt to suppress, disguise, or circumvent logging or monitoring.

I will manually navigate Salesforce, open cases, expand sections, and load any additional pages.

The script must never modify Salesforce records.

Do not collect authentication tokens, cookies, credentials, or unrelated application data.

2. Capture search results

When executed on the Salesforce search results page, identify and collect:

- Exact case number
- Case subject
- Salesforce status
- Record URL, when available in the DOM
- Capture timestamp

Support Salesforce list or table layouts.

Allow multiple captures while I manually scroll through the results or change pages.

Deduplicate using the exact case number.

Report the number of unique cases captured.

Do not assume that every search result is present in the DOM simultaneously.

3. Capture individual case records

I will manually open each relevant Salesforce case.

The script must identify the currently displayed case number or ask me to provide it when detection is uncertain.

Capture available fields including:

- Case number and subject
- Customer/company
- Case creator and owner
- Date opened and last updated
- Current status
- Mastercam version
- Original problem description
- Reported symptoms and error messages
- Reproduction steps
- Troubleshooting actions
- AE correspondence and customer responses
- Escalations and development references
- Resolution notes
- Confirmed fixes and workarounds
- Unresolved questions
- Attachment filenames, if displayed

Preserve important original technical wording.

4. Handle dynamically loaded content

Salesforce may display correspondence, activity history, comments, and related records in separate tabs, expandable sections, or paginated lists.

Provide a Capture Current Section function.

I will manually open each relevant section before running this function.

Store multiple sections under the correct case number.

Label each captured section, retain its source context, and record its capture timestamp.

Prevent captures from different cases from being mixed together.

Retain previously collected sections unless I explicitly clear them.

Do not claim a complete history when some sections may not have been loaded.

5. Investigation requirements

The collected evidence must support analysis of recurring file corruption.

Pay particular attention to explicitly documented triggers such as merging files, saving files, opening older files, and application crashes.

Capture Mastercam versions, actions immediately preceding the failure, reproduction attempts, and the results of each troubleshooting step.

Distinguish:

- Customer-reported symptoms
- AE-confirmed observations
- Suspected causes
- Confirmed causes
- Suggested solutions
- Verified successful resolutions
- Cases closed without documented confirmation

Never treat a Closed status as proof that the technical problem was corrected.

Never invent missing technical details.

6. User interface

Prefer a small, nonintrusive control panel or clearly named console functions providing:

1. Capture Search Results
2. Capture Current Case Section
3. Show Collection Status
4. Export JSON
5. Export CSV
6. Clear Collected Data

Allow collections to survive ordinary navigation within the same browser tab where practical, using temporary client-side storage.

Include protection against duplicates and accidental loss of previously collected information.

Clearly indicate whether collected data is incomplete.

7. File export

JSON must retain complete captured case information and source sections.

CSV must provide one summary row per case with relevant fields.

Use browser-supported local file downloads.

If the browser cannot write directly to "C:\temp", explain how I can select that folder through Edge's download dialog.

Do not install software, launch external programs, or require elevated permissions.

8. Deliverables

Provide:

1. One complete JavaScript snippet suitable for Microsoft Edge DevTools.
2. Clear instructions for installing it as a reusable DevTools Snippet.
3. Instructions for collecting Salesforce search results.
4. Instructions for manually opening cases and capturing their details.
5. Instructions for exporting and clearing collected data.
6. A small validation procedure using one search result and one opened case.
7. A description of limitations involving Lightning components, shadow DOM, pagination, and dynamically loaded information.

Make the code readable, reasonably compact, and easy to maintain.

If Salesforce's actual DOM structure is needed to make extraction reliable, explain exactly which small, sanitized HTML samples I should supply.

Do not assume CSS selectors are correct until tested against the actual page.

The result should be a practical, read-only research utility that I can operate manually during normal Salesforce troubleshooting.
