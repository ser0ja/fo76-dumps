# Fallout 76 data dumps
This repository contains a number of data dumps of _Fallout 76_ in several formats.
The dumps have last been updated for version 1.1.5.7 of _Fallout 76_.

## Files
The dumps are distributed as attachments to [this repository's releases](https://github.com/FWDekker/fo76-dumps/releases).

### Tabular
Tabular dumps are a simplified sort of dump that contains only the most important information. These records should be very easy to understand by anyone. For more information on how to browse them, check [the wiki page](https://github.com/FWDekker/fo76-dumps/wiki/Browsing-CSV-files).

<details>
  <summary>Click here for a list of tabular dumps</summary>
  <p>

| Dump script                                                     | Filename   | Description                                      |
|-----------------------------------------------------------------|------------|--------------------------------------------------|
| [`ExportTabularIDs.pas`](Edit%20scripts/ExportTabularIDs.pas)   | `IDs.csv`  | Form IDs, editor IDs, names, and keywords        |
| [`ExportTabularCOBJ.pas`](Edit%20scripts/ExportTabularCOBJ.pas) | `COBJ.csv` | Craftable object recipes and components          |
| [`ExportTabularGLOB.pas`](Edit%20scripts/ExportTabularGLOB.pas) | `GLOB.csv` | Global variables                                 |
| [`ExportTabularGMST.pas`](Edit%20scripts/ExportTabularGMST.pas) | `GMST.csv` | Game settings                                    |
| [`ExportTabularMISC.pas`](Edit%20scripts/ExportTabularMISC.pas) | `MISC.csv` | Inventory item weights, values, and scrap yields |

  </p>
</details>

### Wiki
Wiki dumps are generated for the [Fallout Wiki](https://fallout.wikia.com/) and use [MediaWiki](https://www.mediawiki.org) templates. These dumps are useful when editing the wiki. Even though the extension is `.wiki`, they are actually just regular text files.

<details>
  <summary>Click here for a list of wiki dumps</summary>
  <p>

| Dump script                                               | Filename    | Description |
|-----------------------------------------------------------|-------------|-------------|
| [`ExportWikiBOOK.pas`](Edit%20scripts/ExportWikiBOOK.pas) | `BOOK.wiki` | Notes       |
| [`ExportWikiDIAL.pas`](Edit%20scripts/ExportWikiDIAL.pas) | `DIAL.wiki` | Dialogue    |
| [`ExportWikiNOTE.pas`](Edit%20scripts/ExportWikiNOTE.pas) | `NOTE.wiki` | Holodisks   |
| [`ExportWikiTERM.pas`](Edit%20scripts/ExportWikiTERM.pas) | `TERM.wiki` | Terminals   |

  </p>
</details>

## Generation
All dumps have been created using [xEdit](https://tes5edit.github.io/) scripts, which are written in [a special form of Object Pascal](https://tes5edit.github.io/docs/11-Scripting-Functions.html#s_11-7). The scripts can be found in the `Edit scripts` directory.

## Contact
* Bugs can be reported on the [Issues](https://github.com/FWDekker/fo76-dumps/issues) page.
* Feature requests can be made on the [Issues](https://github.com/FWDekker/fo76-dumps/issues) page.
* Questions can be asked on [my Fallout Wiki talk page](https://fallout.wikia.com/wiki/User_talk:FDekker) or by emailing me.

## Copyright
The contents of all data dumps in this repository are owned by Bethesda Softworks LLC.
