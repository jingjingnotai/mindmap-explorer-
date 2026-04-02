# Bauhaus Design System Reference

This document describes the Bauhaus industrial design aesthetic for the talk-to-codebase skill output.

## Design Philosophy

The Bauhaus style emphasizes:
- **Form follows function** — Every element serves a purpose
- **Geometric simplicity** — Basic shapes (circle, square, triangle)
- **Primary color palette** — Red, yellow, blue as accent colors
- **Industrial aesthetic** — Bold borders, right angles, grid systems
- **Typography as design** — Futura-style geometric sans-serif fonts

## Color System

### Primary Colors

```css
--bauhaus-red: #E1000F;      /* Bold red for high-priority elements */
--bauhaus-yellow: #FFD700;   /* Bright yellow for medium-priority */
--bauhaus-blue: #0033A0;     /* Deep blue for low-priority */
--bauhaus-black: #000000;    /* Strong contrast backgrounds */
--bauhaus-white: #FFFFFF;    /* Clean content areas */
```

### Usage Guidelines

- **Red:** High-priority markers, call-to-action elements, section accents
- **Yellow:** Medium-priority indicators, hover states, warnings
- **Blue:** Low-priority items, navigation elements, informational badges
- **Black:** Headers, borders, high-contrast text backgrounds
- **White:** Content areas, card backgrounds, body text

## Typography

### Font Stack

```css
--font-geometric: 'Montserrat', 'Futura', 'Avenir', sans-serif;
```

**Why Montserrat?** It's a geometric sans-serif freely available via Google Fonts, closely matching Futura's aesthetic.

### Type Scale

```css
--text-xs: 0.75rem;   /* 12px - Labels, captions */
--text-sm: 0.875rem;  /* 14px - Body small, navigation */
--text-base: 1rem;    /* 16px - Body text */
--text-lg: 1.125rem;  /* 18px - Subheadings */
--text-xl: 1.5rem;    /* 24px - Card titles */
--text-2xl: 2rem;     /* 32px - Section headers */
--text-3xl: 2.5rem;   /* 40px - Page title */
--text-4xl: 3rem;     /* 48px - Hero text */
```

### Typography Principles

- **All-caps headings** — Section titles and navigation in uppercase
- **Letter-spacing** — 1-3px for uppercase text to improve readability
- **Font weights** — 400 (regular), 700 (bold), 900 (black/heavy)
- **Line height** — 1.5 for body text, 1.2 for headings

## Layout System

### Grid Structure

8pt grid system for consistent spacing:

```css
--space-1: 8px;
--space-2: 16px;
--space-3: 24px;
--space-4: 32px;
--space-5: 40px;
--space-6: 48px;
--space-8: 64px;
--space-10: 80px;
```

### Component Layout

- **Two-column grid:** 250px fixed sidebar + 1fr flexible content
- **Card grid:** Auto-fit columns, minimum 300px width
- **Right angles only:** No rounded corners except for geometric shapes (circles)
- **Bold borders:** 4px for cards, 8px for primary elements

## Geometric Elements

### Basic Shapes

**Circle (High Priority):**
```css
.shape-circle {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background: var(--bauhaus-red);
}
```

**Square (Medium Priority):**
```css
.shape-square {
  width: 60px;
  height: 60px;
  background: var(--bauhaus-yellow);
}
```

**Triangle (Directional):**
```css
.shape-triangle {
  width: 0;
  height: 0;
  border-left: 30px solid transparent;
  border-right: 30px solid transparent;
  border-bottom: 60px solid var(--bauhaus-blue);
}
```

### Section Headers

Each section header includes a geometric shape marker:

```html
<h2>Section Title</h2>
```

```css
section h2::before {
  content: '';
  position: absolute;
  left: 0;
  width: 60px;
  height: 60px;
  background: var(--bauhaus-blue);
}

/* Alternate shapes by section */
section:nth-child(2) h2::before { 
  background: var(--bauhaus-red); 
  border-radius: 50%; 
}
section:nth-child(3) h2::before { 
  background: var(--bauhaus-yellow); 
}
```

## Component Patterns

### Cards with Drop Shadow

Industrial depth effect using offset shadow:

```css
.card {
  background: var(--bauhaus-white);
  border: 4px solid var(--bauhaus-black);
  padding: var(--space-3);
  position: relative;
}

.card::after {
  content: '';
  position: absolute;
  bottom: -8px;
  right: -8px;
  width: 100%;
  height: 100%;
  background: var(--bauhaus-light-gray);
  z-index: -1;
}
```

### List Items with Color Dots

Rotating primary colors for visual rhythm:

```css
.card li::before {
  content: '';
  width: 16px;
  height: 16px;
  background: var(--bauhaus-red);
}

.card li:nth-child(3n+2)::before { 
  background: var(--bauhaus-yellow); 
}
.card li:nth-child(3n)::before { 
  background: var(--bauhaus-blue); 
}
```

### Flow Diagrams

Horizontal flow with geometric markers:

```html
<div class="flow">
  <div class="flow-step">Step 1</div>
  <div class="flow-arrow">→</div>
  <div class="flow-step">Step 2</div>
</div>
```

```css
.flow {
  display: flex;
  gap: var(--space-2);
  background: var(--bauhaus-light-gray);
  border: 4px solid var(--bauhaus-black);
}

.flow-step {
  background: var(--bauhaus-white);
  border: 3px solid var(--bauhaus-black);
  padding: var(--space-3);
  position: relative;
}

.flow-step::before {
  content: '';
  position: absolute;
  top: -15px;
  width: 24px;
  height: 24px;
  background: var(--bauhaus-red);
}

/* Alternate shapes */
.flow-step:nth-child(1)::before { 
  border-radius: 50%; 
}
.flow-step:nth-child(2)::before { 
  background: var(--bauhaus-yellow); 
}
```

## Tables

Bold industrial aesthetic with zebra striping:

```css
table {
  width: 100%;
  border-collapse: collapse;
  border: 4px solid var(--bauhaus-black);
}

thead {
  background: var(--bauhaus-black);
  color: var(--bauhaus-white);
}

th {
  text-align: left;
  font-weight: 900;
  text-transform: uppercase;
  letter-spacing: 1px;
}

tbody tr:nth-child(odd) {
  background: var(--bauhaus-white);
}

tbody tr:nth-child(even) {
  background: var(--bauhaus-light-gray);
}

tbody tr:hover {
  background: var(--bauhaus-yellow);
  outline: 2px solid var(--bauhaus-black);
}
```

## Navigation

Fixed sidebar with industrial borders:

```css
nav {
  background: var(--bauhaus-light-gray);
  border-right: 4px solid var(--bauhaus-blue);
  position: sticky;
  top: 120px;
}

nav a {
  display: block;
  padding: var(--space-2);
  font-weight: 700;
  text-transform: uppercase;
  font-size: var(--text-xs);
  letter-spacing: 1px;
  border-left: 4px solid transparent;
}

nav a:hover {
  background: var(--bauhaus-yellow);
  border-left-color: var(--bauhaus-red);
  outline: 2px solid var(--bauhaus-black);
}
```

## Badges

Color-coded tags with geometric styling:

```css
.badge {
  display: inline-block;
  padding: 4px 12px;
  font-size: var(--text-xs);
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 1px;
  background: var(--bauhaus-red);
  color: var(--bauhaus-white);
}

.badge-yellow { 
  background: var(--bauhaus-yellow); 
  color: var(--bauhaus-black); 
}

.badge-blue { 
  background: var(--bauhaus-blue); 
  color: var(--bauhaus-white); 
}
```

## Priority Indicators

Visual hierarchy using colored dots:

```css
.priority-high::before {
  content: '';
  display: inline-block;
  width: 12px;
  height: 12px;
  background: var(--bauhaus-red);
  border-radius: 50%;
}

.priority-medium::before {
  background: var(--bauhaus-yellow);
  /* Square - no border-radius */
}

.priority-low::before {
  background: var(--bauhaus-blue);
  border-radius: 50%;
}
```

## Accessibility Considerations

Despite the bold aesthetic, maintain accessibility:

### Contrast Ratios

- **Black on white:** 21:1 (Excellent)
- **Red on white:** 6.7:1 (AA Large Text)
- **Blue on white:** 8.6:1 (AAA)
- **Yellow on black:** 13.8:1 (AAA)

### Keyboard Navigation

```css
*:focus-visible {
  outline: 3px solid var(--bauhaus-red);
  outline-offset: 2px;
}
```

### Touch Targets

Minimum 44px × 44px for all interactive elements:

```css
nav a { padding: var(--space-2); } /* 16px = 44px+ with line-height */
button { min-height: 44px; min-width: 44px; }
```

### Reduced Motion

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

## Responsive Design

### Breakpoints

```css
/* Mobile first approach */
@media (max-width: 768px) {
  .container {
    grid-template-columns: 1fr; /* Single column */
  }
  
  nav {
    position: static; /* No sticky on mobile */
    border-right: none;
    border-bottom: 4px solid var(--bauhaus-blue);
  }
  
  .flow {
    flex-direction: column; /* Vertical flow */
  }
}
```

## Implementation Notes

### When to Use Bauhaus Style

✅ **Good for:**
- Technical documentation requiring clear hierarchy
- Developer onboarding guides
- System architecture diagrams
- Project status reports
- Engineering wikis

❌ **Not ideal for:**
- Marketing materials (too industrial)
- User-facing UI (too stark)
- Long-form reading (high contrast can cause eye strain)
- Brand-specific documentation (unless brand is industrial/tech)

### Customization

To adapt this style:

1. **Adjust primary colors** — Keep contrast ratios above 4.5:1
2. **Modify spacing scale** — Maintain consistent increments (4pt or 8pt grid)
3. **Change font** — Any geometric sans-serif works (Futura, Avenir, DIN)
4. **Soften borders** — Reduce from 4px to 2px for less aggressive look
5. **Add rounded corners** — Use 4-8px radius for softer industrial aesthetic

## Examples in the Wild

Bauhaus influence in tech:

- **IBM Design Language** — Grid systems, bold typography, geometric shapes
- **Swiss International Style** — Clean grids, sans-serif fonts, asymmetric layouts
- **Material Design** — Elevation system inspired by Bauhaus depth principles
- **GitHub's Primer** — Monochromatic with accent colors, geometric components

## Further Reading

- *Bauhaus* by Frank Whitford
- *The New Typography* by Jan Tschichold (1928)
- *Grid Systems in Graphic Design* by Josef Müller-Brockmann
- [Bauhaus Movement on Wikipedia](https://en.wikipedia.org/wiki/Bauhaus)
- [Smashing Magazine: Lessons From Swiss Style Graphic Design](https://www.smashingmagazine.com/2009/07/lessons-from-swiss-style-graphic-design/)

---

**Style Version:** 1.0  
**Created:** March 31, 2026  
**Compatible with:** talk-to-codebase skill v1.0+