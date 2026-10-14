# PDEA

A video library, downloader and player for Windows. Point it at your folders and
everything plays, stays organised, and is searchable until you need it.

**Version 3.1.0**

## Download

- **[Installer](https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Setup.exe)**
  Installs per user. No administrator rights needed. Adds a desktop and Start
  Menu shortcut.
- **[Portable](https://github.com/Babar-Meet/PDEA-dist/releases/latest/download/PDEA-Portable.zip)**
  No install at all. Unzip and run.

Those two links always serve the newest published release. Older builds are on the
[releases page](https://github.com/Babar-Meet/PDEA-dist/releases).

Download it from [pdea.pages.dev](https://pdea.pages.dev).

## What it does

**Play**
Add folders to your library, see them in the sidebar and play them. Plays MP4,
MKV, AVI, MOV and WebM. Play, pause, skip forward and back, step a frame at a
time, speed control, play the next video or preview it, hold the spacebar to play
at a different speed, loop a video, sound control, cinema mode. 15 keyboard
shortcuts and every one of them rebindable.

**Ambiance**
Play songs you already have, on loop. Mix and match several at once, with a volume
slider for each and a master volume for all of them.

**Download**
Needs an add-on such as yt-dlp installed. Four modes: **Direct** gives it a link
and returns the best quality available, **Simple** picks the quality from a
dropdown, **Advanced** chooses the video format, the audio format and the
language, and **Playlist** takes a whole playlist. Pause, resume and cancel while
it downloads.

**Bookmarks**
Save the web address of any video, kept in categories.

**Subscriptions**
Give it a channel link. When a new video is out it downloads itself, or waits
for you. In the quality you prefer.

**Find**
Search your videos fast. A ranking algorithm puts the best match at the top.

**Private area**
Opens only with a passcode. Locks itself again when the timer runs out, or with
one click straight away. Nothing in here is visible anywhere else in the app.

**Built-in browser**
A browser built into the app.

## What you need

- Windows 10 or newer, 64-bit
- 279 MB for the installer, 382 MB for the portable ZIP
- About 1 GB once installed, plus your own videos

There is no separate RAM requirement.

## Good to know

**It will not ask for administrator rights.** The installer writes to your own
user profile. If it ever did ask, something is wrong.

**It will not ask about your firewall.** PDEA adds no firewall rules and only
listens on your own machine, on a port picked at random each launch, so Windows
has nothing to ask you about.

**It does not phone home.** No analytics, no telemetry, no tracking. The only
network traffic is what you ask for: playing your own files, and downloading.

**Upgrading keeps your library.** Your videos, settings and any password-locked
folders all survive. A clean uninstall removes everything, including the library.

## Reporting a problem

Say which version you are on. It is shown in the info panel, the `i` button in
the header, and on the download page next to each release.

## About this repo

This is the public distribution channel: the download page and the published
releases. Application source is private and is not published here.

The landing page is a single hand-written `index.html` with no build step. Its
design system and the rules for editing it are in [DESIGN.md](DESIGN.md) — read
that first. Any claim on the page must be checked against the app before it is
written down.

© 2026 Babariya Meet. PDEA is proprietary software. All rights reserved.