# PDEA-dist design system

This is the design system for the public PDEA download page
(`index.html`, live at <https://pdea.pages.dev>). It is **VoiceBox**.

**Read this before changing the page.** It is a single hand-written HTML
file with no build step, so nothing enforces these rules automatically.
They only hold because whoever edits next reads them.

---

## VoiceBox

Bold, opinionated, magazine-style.

### Overview

VoiceBox is a high-contrast editorial design system. It channels the
energy of print magazines: massive headlines, stark black-and-white
foundations, and a single aggressive red accent that punctuates like an
exclamation mark. Density is intentionally mixed, bold oversized headers
create dramatic entries while compact body text stays readable. Every
element is flat and sharp, with borders doing all the structural work.

### Colors

#### Brand palette

| Token     | Hex       | Role                                          |
|-----------|-----------|-----------------------------------------------|
| Primary   | `#0A0A0A` | Black: headings, primary UI, dominant tone     |
| Secondary | `#EF4444` | Red: accent, emphasis, editorial highlights    |
| Tertiary  | `#FAFAFA` | White: backgrounds, inverse text               |

#### Surface palette

| Token           | Hex       | Role                                       |
|-----------------|-----------|--------------------------------------------|
| Background      | `#FAFAFA` | Page background                            |
| Surface         | `#F5F5F5` | Aside blocks, quiet fills                  |
| Surface raised  | `#E5E5E5` | Hover backgrounds                          |

#### Content palette

| Token           | Hex       | Role                                       |
|-----------------|-----------|--------------------------------------------|
| Text primary    | `#0A0A0A` | Headlines, body copy                       |
| Text secondary  | `#525252` | Bylines, datelines, secondary prose        |
| Text tertiary   | `#A3A3A3` | Placeholders, disabled text                |

#### Border palette

| Token           | Hex       | Role                                       |
|-----------------|-----------|--------------------------------------------|
| Border subtle   | `#E5E5E5` | Dividers inside a component only            |
| Border medium   | `#D4D4D4` | Chips, secondary controls                   |
| Border strong   | `#0A0A0A` | Cards, buttons, section rules, the nav      |

> **The one rule this page got wrong before.** A card edge must never be
> `#E5E5E5`. On `#FAFAFA` that border is invisible, the card stops
> reading as an object, and the whole page looks unfinished. Card and
> section edges are `2px solid #0A0A0A`.

#### Semantic colors

| Token   | Hex       |
|---------|-----------|
| Success | `#16A34A` |
| Warning | `#CA8A04` |
| Error   | `#EF4444` |
| Info    | `#0A0A0A` |

### Typography

| Role             | Font                                                        |
|------------------|-------------------------------------------------------------|
| Display/Headings | Archivo Black, Impact, 'Arial Black', sans-serif            |
| UI/Body          | Work Sans, -apple-system, 'Segoe UI', Helvetica, sans-serif |
| Mono/Code        | Space Mono, 'Courier New', Consolas, monospace              |

#### Type scale

| Level        | Font          | Size   | Weight | Line height | Letter spacing | Usage                     |
|--------------|---------------|--------|--------|-------------|----------------|---------------------------|
| Display      | Archivo Black | 56px   | 400    | 1.05        | -0.03em        | Hero headline              |
| Headline     | Archivo Black | 38px   | 400    | 1.1         | -0.02em        | Section titles             |
| Subhead      | Archivo Black | 24px   | 400    | 1.2         | -0.01em        | Card headings              |
| Body large   | Work Sans     | 20px   | 400    | 1.65        | 0              | Lede paragraphs            |
| Body         | Work Sans     | 16px   | 400    | 1.7         | 0              | Default copy               |
| Body small   | Work Sans     | 14px   | 400    | 1.6         | 0              | List items                 |
| Caption      | Work Sans     | 12px   | 500    | 1.5         | 0.01em        | Dates, counts              |
| Overline     | Work Sans     | 11px   | 700    | 1.4         | 0.12em        | Section labels             |
| Code         | Space Mono    | 14px   | 400    | 1.6         | 0              | Version numbers            |

Hero and section titles use `clamp()` so they scale between the 700px and
1000px breakpoints. Keep them clamped, never a fixed px size.

### Spacing

| Property                  | Value                                   |
|---------------------------|-----------------------------------------|
| Base unit                 | 8px                                     |
| Scale                     | 4, 8, 16, 24, 32, 48, 64, 96            |
| Component padding, small  | 8px                                     |
| Component padding, medium | 16px                                    |
| Component padding, large  | 32px                                    |
| Section spacing, mobile   | 48px                                    |
| Section spacing, tablet   | 64px                                    |
| Section spacing, desktop  | 96px                                    |

### Border radius

| Token  | Value   | Usage                        |
|--------|---------|------------------------------|
| None   | 0px     | Everything, this is the rule |
| Full   | 9999px  | Not used on this page        |

Sharp square edges are mandatory. The magazine aesthetic demands
geometric precision.

### Shadows

None. At any level. The system is flat and hierarchy comes from weight,
scale and black-white contrast, never from elevation.

| Level   | CSS Value | Usage  |
|---------|-----------|--------|
| Subtle  | `none`    | —      |
| Medium  | `none`    | —      |
| Large   | `none`    | —      |
| Overlay | `none`    | —      |

**Focus ring:** `0 0 0 2px #FAFAFA, 0 0 0 4px #0A0A0A`, applied via
`:focus-visible`.

### Components used on this page

#### Buttons

All four variants: `10px 24px` padding, `14px` Work Sans 700, uppercase,
`0.06em` letter spacing, `0px` radius, `2px solid` border.

| Variant      | Background        | Text       | Hover              |
|--------------|-------------------|------------|--------------------|
| Primary      | `#0A0A0A`         | `#FAFAFA`  | bg + border `#EF4444` |
| Secondary    | transparent       | `#0A0A0A`  | bg `#0A0A0A`, text `#FAFAFA` |
| Ghost        | transparent       | `#0A0A0A`  | text `#EF4444`     |
| Destructive  | `#EF4444`         | `#FAFAFA`  | `#DC2626`          |

Disabled: `opacity 0.35`, `cursor: not-allowed`, no hover transition.

**The page uses Primary for the installer button and Secondary for the
portable one.** That is the whole point: black says "this is the one".

#### Cards

**Default:** background `#FAFAFA`, border `2px solid #E5E5E5`, radius
`0px`, padding `24px`, no shadow, hover border `#0A0A0A`.

> On this page the feature cards use `2px solid #0A0A0A` rather than
> `#E5E5E5`, for the contrast reason in the border table above.

#### Chips

**Filter chip:** transparent background, `2px solid #D4D4D4`, radius `0px`,
padding `4px 14px`, Work Sans `12px` 700 uppercase, `0.04em`, text
`#525252`. Selected: background `#0A0A0A`, text `#FAFAFA`.

These are the Installer and Portable links in the version table.

#### Lists

Default list item: padding `14px 0`, border-bottom `1px solid #E5E5E5`,
Work Sans `16px`. In the feature cards the list is a flex column with a
`7px` gap and a small square tick drawn in `li::before`, which is the
system's angular rule applied as a list marker.

### Do's and don'ts

1. **Do** make headlines massive and unapologetic.
2. **Don't** use red (`#EF4444`) for more than one element per viewport.
   It is a scalpel, not a paintbrush.
3. **Do** use thick 2px borders for interactive elements.
4. **Don't** introduce rounded corners or soft shadows.
5. **Do** keep red for the single most important thing on screen.
6. **Don't** use more than three type sizes in one section: headline, body,
   caption.
7. **Do** set overline labels in uppercase Work Sans to establish section
   identity.
8. **Do** maintain stark black-on-white contrast.
9. **Don't** add decorative imagery, gradients or background textures.
10. **Do** use the red accent on hover for primary buttons.

---

## Traps in this page

Not theory. Each of these is a bug that has actually shipped here.

### The logo will get cropped

`PDEA_LOGO.svg` is **270×197**, not square. Any rule that forces it square
with `object-fit: cover` crops the artwork.

```css
.brand__mark { width: auto; height: 32px; }   /* correct */
.brand__mark { width: 28px; height: 28px; object-fit: cover; }   /* crops it */
```

Size by height only.

### `padding` shorthand destroys mobile gutters

`.shell` sets `padding-inline`. Inside the 700px media query, using the
`padding` shorthand on any `.shell` element resets left and right padding
to zero, which jams the headline and buttons against the screen edge.

```css
.hero { padding: 52px 0 44px; }              /* wrong: kills the gutters */
.hero { padding-block: 52px 44px; }         /* correct */
```

### Grid rows stretch cards and leave dead space

A CSS grid row is as tall as its tallest card, so a 2-item card ends up
with a large empty box under it, and that reads as broken. Feature cards
use `column-count` instead, so each card sits at its natural height and
the browser balances the column bottoms.

```css
.cards { column-count: 3; column-gap: 18px; }
.fx { break-inside: avoid; margin: 0 0 18px; }
```

Do not "fix" this by switching back to grid.

### Red must stay rare

Red is used on exactly three things: the primary button hover, the
`Latest` changelog badge, and the Private area card. Adding a fourth red
element breaks rule 2.

### Facts on this page must be verified against the app

Do not write a capability from memory. Check the source in the PDEA repo
at `B:\_Git\DEV\Babar-Meet\PDEA` first. Claims that were wrong before:

| Wrong                          | Actual                                                    |
|--------------------------------|-----------------------------------------------------------|
| `0.1x to 16x` speed            | `0.25x to 4x`, hold to double (`videoPlayerSettingsSlice.js`) |
| `MP3` supported                 | mp4, webm, mov, mkv, avi, ogg, ogv (`browserUtils.js`)      |
| `4 GB RAM`, `500 MB disk`      | Never existed. Installer 279 MB, portable 382 MB, ~1 GB installed |
| `Asks for admin rights`        | Not a requirement. Belongs in the button text, not a spec   |

Download counts come from the GitHub releases API `download_count`, per
release. Never hand-write one, and never show an invented site total.

---

## Adding a section later

1. Read this file first.
2. `.overline` label, then a `.band__title`, then `.band__lede`.
3. Section rule is `border-bottom: 2px solid #0A0A0A` on `.band`.
4. Keep it to one accent moment. If the new section wants red, something
   else on the page has to give it up.
5. Check mobile at 390px and desktop at 1440px before pushing.