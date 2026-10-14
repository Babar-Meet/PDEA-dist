# PDEA-dist — Public Distribution of PDEA

This repo is the **public distribution channel** for **PDEA**, a video library,
downloader and player for Windows.

End users come here to download the app. Application source code lives in the
private `Babar-Meet/PDEA` repo; this repo holds the download page and the
published releases.

## Download

- **Live site:** <https://pdea.pages.dev>
- **Installer (recommended):** <https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Setup.exe>
  - Installs per user into `%LocalAppData%\Programs`. **Does not ask for
    administrator rights.** Creates a desktop and Start Menu shortcut.
- **Portable:** <https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Portable.zip>
  - No install at all. Unzip and run.
- **All versions:** <https://github.com/Babar-Meet/PDEA-dist/releases>

The `latest/download` links always serve the newest published release, so these
URLs never go stale when a new version ships. The site is served from Cloudflare
Pages; there is no Vercel deployment.

## System requirements

- Windows 10 or newer, 64-bit (x64)
- Installer: 279 MB. Portable ZIP: 382 MB
- About 1 GB once installed, plus your videos

There is no separate RAM requirement. Do not invent one: if a number here is not
in the build output, it is not in the app.

## Firewall

PDEA adds **no firewall rules**, so it never triggers the Windows Firewall
"Allow access" prompt. Its backend listens on loopback only, on a port chosen at
random on each launch.

Versions up to 3.0.1 did add two inbound rules covering the private and public
network profiles. Upgrading from those versions removes them.

## Upgrading

Download the new installer or portable ZIP and run it. Upgrading preserves the
existing video library and any password-locked folders. A clean uninstall removes
everything, including the library.

## What is in this repo

| File | Purpose |
| ---- | ------- |
| `index.html` | Landing page source, deployed to <https://pdea.pages.dev> |
| `PDEA_LOGO.svg` | App logo used by the landing page |
| `bmc-icon.png` | Buy Me a Coffee mark used by the landing page's Support link |
| `DESIGN.md` | The VoiceBox design system for the landing page. **Read it before editing `index.html`.** |
| `publish.bat` | Release helper, run from the app repo. Copies the built artifacts out of `..\PDEA\dist-installer`, renames them to the fixed asset names above, and creates the GitHub release. |

`publish.bat` creates the release immediately. That is a public deploy: once
published, every existing download link on the site starts serving the new file
for every user, old and new, with no rollback.

## Deploying the landing page

```powershell
npx wrangler pages deploy . --project-name pdea --branch main
```

Project `pdea`. Cloudflare Pages, not Vercel.

## Editing the landing page

Every factual claim on the page must be checked against the app before it is
written. Claims that were wrong before are recorded in `DESIGN.md` with where to
verify them. Download counts come from the GitHub releases API, per release.

© 2026 Babariya Meet. PDEA is proprietary software. All rights reserved.