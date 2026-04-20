# Discourse Trainer Card Component

A Discourse theme component that restyles the user card popup to look like a Pokemon-style trainer card — red border, gold diagonal-stripe background, a framed avatar portrait, and badge pills along the bottom.

![Trainer card preview](#)

## Installation

1. Go to **Admin → Customize → Themes → Components → Install**.
2. Choose **From a git repository** and paste:
   ```
   https://github.com/ScottMastro/discourse-trainer-card-component.git
   ```
3. Add the component to any theme under **Admin → Customize → Themes → (your theme) → Included components**.

## Settings

| Setting | Default | Description |
| --- | --- | --- |
| `header_text` | `TRAINER CARD` | Text shown in the header bar at the top of the user card. |
| `primary_color` | `#e03c28` | Main accent color — border, header bar, and button highlights. |
| `background_color` | `#f7d154` | Base card body color (the gold of the diagonal stripes). |
| `stripe_color` | `#ffe88a` | Secondary stripe color on the card body. |

Change these under **Admin → Customize → Themes → (component) → Settings** to match your forum's palette.

## What it restyles

The component targets the `#user-card.user-card` popup and its inner pieces:

- Outer border, gold stripe background, and a "TRAINER CARD" header bar
- Avatar wrapped in a framed portrait (white mat + black border + colored inner stroke)
- Name, title, and bio panels
- Metadata row (joined / last post / time read) shown as a two-column stats panel
- Featured badges rendered as rounded gym-badge pills
- Action buttons (Message, Filter, etc.) repainted to fit the theme

It does not modify the full user profile page — only the hover/click popup card.

## Scope

This is a pure-CSS component — no JavaScript, no backend changes. It should work alongside any parent theme and can be toggled on/off per theme.

## License

MIT — see `LICENSE`.
