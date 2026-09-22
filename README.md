# PDEA-dist — Public Distribution of PDEA

This repo is the **public distribution channel** for **PDEA** (Personal Media Manager),
an all-in-one video manager, YouTube downloader, and media player for Windows 10/11 (x64).

End users come here to download the app. App source code lives elsewhere;
this repo contains the download landing page plus the published releases.

## Download

- **Live site:** https://getpdea.vercel.app/
- **Installer (recommended):** https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Setup.exe
  - NSIS setup, sets up firewall rules and shortcuts (asks for admin once).
- **Portable:** https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Portable.zip
  - No install, no admin needed. Unzip and run.
- **All versions:** https://github.com/Babar-Meet/PDEA-dist/releases

The `latest/download` links always serve the newest published release, so these
URLs never go stale when a new version ships.

## What is in this repo

| File | Purpose |
| ---- | ------- |
| `index.html` | Landing page source, deployed to https://getpdea.vercel.app/ |
| `PDEA_LOGO.svg` | App logo used by the landing page |
| `publish.bat` | Release helper (run from the app repo): copies `PDEA-Setup-<version>.exe` and `PDEA-<version>-win.zip` out of `..\PDEA\dist-installer`, renames them to the fixed names above, and creates the GitHub release |

## Upgrading

Download the new installer or portable ZIP and run it. Upgrade and reinstall
preserve the existing video library (it is backed up and restored automatically).
A clean uninstall removes everything, including the library.

## System requirements

- Windows 10 / 11, 64-bit (x64)
- 4 GB RAM minimum
- 500 MB disk space plus room for videos

© 2026 Babariya Meet. PDEA is proprietary software. All rights reserved.