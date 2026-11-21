Yes, you've got the right idea, but there's an important distinction: you want to build one complete tool assembly, not add four separate parts to a shopping list.

I checked Sandvik's official CoroPlus Tool Library training materials. Their assembly builder allows you to start with a cutting tool, select its insert, and progressively add compatible adapters until the assembly is complete. Sandvik Coromant +1

For your application, I recommend building from the cutting edge back toward the spindle.

### Here's how to build Tool 1

Open [Sandvik CoroPlus Tool Library](https://toollibrary.sandvik.coromant.com?utm_source=chatgpt.com) and sign in.

* Start a new assembly.

    Select New assembly or Create, then choose the turning-tool category.

* Find the cutting unit.

    Search for:

    `SL70A-SRDCL-300-4HP`

     Copy

    Select the matching cutting unit to begin the assembly.

* Select the insert.

    Search for:

    `RCMT 43 4335`

     Copy

    Choose the matching insert. Sandvik should display the inserts compatible with the selected cutting unit.

* Add your intermediate adapter.

    Use the builder's Add adapter option and find:

    `C8-SL70-RG-090`

     Copy

* Add your machine-side adapter.

    Select Add adapter again and search for:

    `C8-A390.547-50 070`

     Copy

    This is your proposed BIG-PLUS CAT50-to-C8 connection. Make sure the builder accepts the connection and the configuration matches the machine.

* Save and export the assembly.

    Give it a name such as `T5_BUTTON_PROFILE_CAT50`.

    Inspect the 3D assembly, verify the connections, then select Export and choose GTC.

### What the completed assembly should look like

CAT50 Machine Connection

C8-A390.547-50 070

C8 Intermediate Adapter

C8-SL70-RG-090

Cutting Unit

SL70A-SRDCL-300-4HP

RCMT Insert

RCMT 43 4335

Sandvik has an official short video demonstrating this exact workflow:

[Watch: Create and export cutting tool assembly (1:46)](https://www.sandvik.coromant.com/en-us/tools/digital-machining/coroplus-tool-library?utm_source=chatgpt.com)

My suggestion: Start with the cutting unit rather than CAT50. That way, Sandvik can guide you through the compatible inserts and adapters.

If you're already on the Sandvik website, send me a screenshot of the page you're looking at. I'll walk you through the actual buttons on your screen so we can assemble Tool 1 correctly without hunting through menus.
