I found the automation features we need in the official VERICUT 9.7 documentation. We can run the complete simulation unattended and capture positional data automatically. We don't need to keep single-blocking or photographing the Status window.

There are two important discoveries.

First, VERICUT has a built-in Batch Wizard. It can load your existing e-1250V project, execute the NC program, produce its logs, and exit without requiring you to press Play or Step. It uses your existing VERICUT license connection.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://help.vericut.com\&sz=32)

Vericut



Second, the VERICUT Status File is specifically designed to record each processed NC block and its corresponding machine and tool-tip coordinates. Its documented output includes machine XYZABC, tool-tip XYZ, tool-axis orientation, and error information.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://help.vericut.com\&sz=32)

Vericut



The problem is that the earlier status file we retrieved contained zero-valued coordinate fields despite visible machine movement. We need to correct and validate that output before relying on it.

### One-time VERICUT adjustment

Open Info → Status, right-click inside the Locations section, and enable both Machine and Tool Tip in the field-visibility options. Leave Local enabled as well.

The official documentation confirms these fields are individually configurable and that the Status File reflects the fields selected for output.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://help.vericut.com\&sz=32)

Vericut



Once those settings are retained, we can run programs normally and collect their results without manual inspection of every block.

## I've built the automated workflow in GitHub

Everything is now in your NC Proving Ground repository, under the Mazak e-1250V folder.

One-click VERICUT runner

[RUN_TEST.bat](https://github.com/DLBronson/nc-proving-ground/blob/main/machines/mazak-integrex-e1250v/RUN_TEST.bat?utm_source=chatgpt.com)Launches the saved VERICUT project in batch mode, without single-blocking.

The two output files

[PERIMETER_OUTPUT.eia](https://github.com/DLBronson/nc-proving-ground/blob/main/machines/mazak-integrex-e1250v/PERIMETER_OUTPUT.eia?utm_source=chatgpt.com)The NC program used for the unattended simulation

[PARAMETER_OUTPUT.txt](https://github.com/DLBronson/nc-proving-ground/blob/main/machines/mazak-integrex-e1250v/PARAMETER_OUTPUT.txt?utm_source=chatgpt.com)Block numbers, machine coordinates, tool-tip positions, and complete debug log

The perimeter file contains the current Test 27 program with the manual M00 pauses removed from a separate simulation copy. The parameter file is currently a placeholder; its real contents will be generated on your laptop after VERICUT runs.

## What you need to do once

1. Pull the latest repository changes into VS Code.
2. Open the [configuration template](https://github.com/DLBronson/nc-proving-ground/blob/main/machines/mazak-integrex-e1250v/LOCAL_CONFIG.example.psd1?utm_source=chatgpt.com) and save a local copy named `LOCAL_CONFIG.psd1`.
3. Enter the locations of your VERICUT project, the dedicated `A_TESTING.eia` file, and your debug log.
4. Double-click `RUN_TEST.bat` from the locally cloned repository.

Full instructions: [Automation setup guide](https://github.com/DLBronson/nc-proving-ground/blob/main/machines/mazak-integrex-e1250v/AUTOMATION_README.md?utm_source=chatgpt.com)

Once configured, the runner will execute the simulation, generate the two output files, and flag missing or invalid positional data. It also backs up the dedicated test NC file before replacing it.

For automatic GitHub uploads, the configuration has an `AutoPush` option. You can enable it once command-line Git authentication is working and uploading those files is permitted by your company. Otherwise, use VS Code to commit and push.

## One important limitation

The scripts and repository files are created and verified, but I haven't executed them against your licensed VERICUT installation. Our first unattended run will validate both the batch launcher and the machine-coordinate output.

If the status file continues producing zeros, the generated parameter report will explicitly flag that problem rather than present false machine positions. VERICUT also exposes machine, local, and tool-tip positions through its post-processor interface, which gives us a documented fallback.&#x20;

[image](https://www.google.com/s2/favicons?domain=https://help.vericut.com\&sz=32)

Vericut



Our target workflow is now: run one file, let VERICUT finish, publish two output files, and tell me they're ready. I'll retrieve the results and update the next proving-out program.
