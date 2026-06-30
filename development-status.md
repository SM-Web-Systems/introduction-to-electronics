# Development Status - Intro to Electronics LMS

## Last Updated
**Date**: 2026-06-26
**Session Duration**: ~1 session
**Claude Code Session**: In-browser slide viewer (PPTXjs) + offline support

## Current Project State
### What's Working
- Static, offline-capable PWA LMS (no backend) with per-module tabbed content:
  Lesson, Video, Infographic, Quiz, Flashcards, Mind Map, Slides, Notes, Challenge.
- **NEW: In-browser PowerPoint slide viewer** in the Slides tab, alongside the
  existing "Download Slide Deck" button. Powered by PPTXjs (client-side .pptx
  renderer). A "👁 View Slides Here" button lazily renders all slides inline;
  re-clicking toggles "🙈 Hide Slides".
- **NEW: PPTXjs is fully vendored locally** in `js/vendor/pptxjs/` (no CDN
  dependency for slides) and precached by the service worker for offline use.
- **NEW: Slides are scaled to fit the viewer** (responsive `fitSlides()` using CSS
  `zoom`). Previously rendered at native width (~1706px) and overflowed/zoomed-in;
  now scaled to the container width and re-fit on window resize.
- **NEW: Custom favicon** — inline SVG data URI (rounded square, indigo→cyan
  gradient, white lightning bolt) matching the nav logo. Embedded in the `<head>`
  of `index.html` and `module.html`; also saved as `favicon.svg`. The PWA manifest
  icon and `theme_color` (#6366f1) were updated to the same mark for cohesion.
- Verified end-to-end in headless Chromium (Playwright):
  - Online: 12 slides render for Module 1, zero non-localhost requests for PPTXjs.
  - Offline: after viewing a deck online once, slides render offline (12 slides).
  - Fit: native 1706px slide scaled to 944px inside 960px viewer, no overflow.
  - Mind map's d3 v7.8.5 is unaffected (PPTXjs's bundled d3 v3 deliberately NOT loaded).

### What's In Progress
- None — slide viewer feature is complete and tested.

### What's Next
- (Optional) Precache each module's `slides.pptx` so decks view offline WITHOUT a
  prior online visit. Requires fixing the stale `MODULE_DIRS` list in `sw.js`.
- (Optional) Vendor the remaining CDN scripts (`d3`, `marked`) to make the whole
  site fully CDN-free / offline.

## Technical Details
### Recent Changes
- `module.html`:
  - Added local PPTXjs CSS `<link>` + viewer styles in `<head>`.
  - Added "View Slides Here" button (`#slides-view-toggle`) and viewer container
    (`#slides-viewer-wrap` / `#slides-viewer`) to the Slides panel.
  - Added 5 local PPTXjs `<script>` tags (jquery, jszip, filereader, pptxjs,
    divs2slides) before the main inline script; jQuery namespaced as `window.$pptx`.
  - Rewrote `panelData.slides.load` to wire up lazy render + show/hide toggle with
    a 15s timeout fallback message.
  - Added `fitSlides()` to scale the rendered deck to the viewer width via CSS
    `zoom` (PPTXjs's `slidesScale` only works in slideshow mode). Re-applied on a
    ~5s interval so the zoom survives PPTXjs's final overwrite of the wrapper
    style, plus a debounced window-resize handler.
  - Added a custom SVG favicon `<link>` (inline data URI) to both `index.html`
    and `module.html`.
- `favicon.svg` (NEW): standalone copy of the favicon mark.
- `manifest.json`: replaced the amber ⚡ icon with the gradient-bolt mark and set
  `theme_color` to #6366f1 (indigo) for cohesion with the logo/favicon.
- `sw.js`: bumped `CACHE_NAME` to `blockchain-academy-v3` and added `/favicon.svg`
  to `SHELL_ASSETS` (so the updated manifest/icon propagate to existing clients).
- `js/vendor/pptxjs/` (NEW): jquery.min.js, jszip.min.js, filereader.js,
  pptxjs.js (v1.21.1), divs2slides.js (v1.3.2), pptxjs.css. Also an unused
  duplicate `divsToSlides.js` (could not be removed — `rm` is disallowed).
- `sw.js`:
  - Bumped `CACHE_NAME` to `blockchain-academy-v2`.
  - Added the 6 vendored PPTXjs files to `SHELL_ASSETS`.
  - Document handler now uses `caches.match(req, { ignoreSearch: true })` so
    `module.html?id=N` resolves from cached `/module.html` offline (fixed a
    pre-existing bug affecting all tabs offline).
  - Added a HEAD-request handler (network-first, cache fallback with
    `ignoreMethod`+`ignoreSearch`) so `fileExists()` checks succeed offline.

### Architecture Decisions
- Chose client-side PPTXjs renderer (per user) over Office Online iframe / PDF /
  PNG conversion — no pipeline change, works offline once vendored.
- Did NOT load PPTXjs's bundled d3/nv.d3: they ship d3 v3 which would overwrite
  the d3 v7 used by the mind map. Trade-off: native PowerPoint charts inside a
  deck won't render; standard slides (NotebookLM output) render fine.

### Known Issues
- `sw.js` `MODULE_DIRS` still lists stale blockchain module names
  (`module-1-intro`, etc.) instead of the real electronics dirs
  (`module-1-safety`, etc.) — so `lesson.md`/`mind-map.json` precaching is
  silently broken, and `slides.pptx` is not precached. Decks only become
  available offline after being viewed online once (cache-first handler).
- Page still loads `d3` and `marked` from cdnjs (pre-existing) — those fail offline.

## File Structure Status
### Key Files Location
- `module.html` — generic per-module page (reads `?id=N`), contains the slide viewer.
- `js/course.js` — module metadata / shared logic.
- `js/vendor/pptxjs/` — vendored slide renderer.
- `sw.js` — service worker (cache name `blockchain-academy-v2`).
- `module-N-*/content/slides.pptx` — per-module decks.

### Dependencies
- Front-end only, no build step. PPTXjs vendored locally; d3 + marked via CDN.

## Testing Status
- Headless Chromium (Playwright) tests written/run in scratchpad:
  - Online render: PASS (12 slides, no external PPTXjs requests, d3 v7 intact).
  - Offline assets served from cache: PASS (all 6 files, 200).
  - Offline document reload (`?id=1`): PASS after `ignoreSearch` fix.
  - Realistic view-online-then-offline render: PASS (12 slides offline).
- Syntax checks: `node --check` on sw.js, pptxjs.js, divs2slides.js — PASS;
  module.html HTML parse — PASS.

## Notes for Next Session
### Context for New Claude Session
- This is a static LMS (likely generated by the lms-factory skill). `module.html`
  is shared across all modules; the slide viewer code lives there and applies to
  every module automatically.
- User confirmed: always update this development-status.md file.

### Immediate Priorities
1. (If desired) Fix `sw.js` `MODULE_DIRS` to real electronics module dirs and add
   `slides.pptx` to precache for true zero-visit offline support.
2. (If desired) Vendor `d3` and `marked` to remove remaining CDN dependencies.
3. Clean up the unused `js/vendor/pptxjs/divsToSlides.js` duplicate (needs a
   non-`rm` approach).

### Warnings/Cautions
- Do NOT load PPTXjs's d3/nv.d3 — it will break the mind map (d3 v7 → v3 clobber).
- Bump `CACHE_NAME` in `sw.js` whenever shell assets change, or clients keep stale files.
- `rm`/`mv` are disallowed per CLAUDE.md — use copy/overwrite for cleanup.
