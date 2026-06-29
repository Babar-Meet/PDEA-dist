# PDEA Distribution Landing Page — Design Plan

## Repo: Babar-Meet/PDEA-dist (public)

### Goal
A single-page landing site hosted on Vercel that lets Windows users download PDEA installer directly from the GitHub Release asset.

### Flow
```
User visits https://pdea.vercel.app
  → Clicks "Download for Windows" button
  → Downloads PDEA-Setup-1.6.2.exe directly from GitHub Releases
  → Runs installer
```

### Files
| File | Purpose |
|------|---------|
| `.gitignore` | Ignore system/editor files |
| `index.html` | Single HTML file — landing page (all CSS/JS inline) |
| `PDEA_LOGO.svg` | Brand logo |
| `DESIGN.md` | This document |

### Page Sections
1. **Nav bar** — PDEA logo + GitHub link
2. **Hero** — Large headline, subtitle, prominent Windows download button (green/blue CTA)
3. **Quick features** — 3-4 key features (video player, downloader, subscriptions, ambience) in a simple row
4. **System requirements** — Minimal badge: Windows 10/11, 4GB RAM, 500MB storage
5. **Footer** — GitHub, Buy Me a Coffee, author credit

### Design Tokens
- Background: Dark (#0a0a0f)
- Cards/containers: Slightly lighter (#14141f)
- Accent: Gradient blue-purple (#6366f1 → #a855f7)
- Text: White (#f1f5f9)
- Muted text: Gray (#94a3b8)
- Border radius: 12px
- Font: System UI (Inter/system stack)

### No External Dependencies
- No frameworks (React, Vue, etc.)
- No CSS libraries (Tailwind, Bootstrap)
- No JavaScript bundles
- Everything in one HTML file

### Deployment
- `vercel --prod` from repo root
- Domain: `pdea.vercel.app` (or custom domain later)
