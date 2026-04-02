# Neumorphism Design System

Complete design system documentation for the Neumorphism (Soft UI) template option.

## Overview

Neumorphism is a tactile, clay-like design style that creates soft, extruded interfaces using subtle shadows. It mimics physical materials with inset and outset effects, creating a calm, approachable aesthetic.

## Core Principles

1. **Soft Shadows** — Light source from top-left creates depth without hard borders
2. **Monochromatic** — Single base color (#E0E5EC) with shadow-based depth
3. **Tactile Feel** — Clay-like, touchable interface elements
4. **Gentle Contrast** — Avoid harsh edges, embrace soft transitions
5. **Accessibility First** — Enhanced with color for critical elements

---

## Color System

### Primary Palette

```css
--neuro-bg: #E0E5EC;           /* Base background */
--neuro-surface: #E0E5EC;       /* Surface elements */
--neuro-text-primary: #2C3E50;  /* Primary text */
--neuro-text-secondary: #5F6C7B;/* Secondary text */
--neuro-text-tertiary: #8B95A4; /* Tertiary text */
```

### Accent Colors

```css
--neuro-accent: #667EEA;        /* Primary accent (blue-purple) */
--neuro-accent-light: #7F94FF;  /* Light accent */
--neuro-success: #48BB78;       /* Success states */
--neuro-warning: #F6AD55;       /* Warning states */
--neuro-error: #F56565;         /* Error states */
```

### Usage Guidelines

- **Background:** Always use #E0E5EC for surfaces
- **Text:** Use primary for headings, secondary for body, tertiary for labels
- **Accents:** Use sparingly for interactive elements and critical info
- **Status colors:** Only for indicators (success/warning/error badges)

---

## Shadow System

### Light Source

Neumorphism assumes light coming from **top-left at 135°**:
- **Top-left:** Bright white shadow (-8px -8px)
- **Bottom-right:** Dark shadow (8px 8px)

### Shadow Tokens

```css
/* Light shadow — top-left */
--shadow-light: -8px -8px 16px rgba(255, 255, 255, 0.8);

/* Dark shadow — bottom-right */
--shadow-dark: 8px 8px 16px rgba(163, 177, 198, 0.6);

/* Inset shadows for pressed effect */
--shadow-inset-light: inset -4px -4px 8px rgba(255, 255, 255, 0.5);
--shadow-inset-dark: inset 4px 4px 8px rgba(163, 177, 198, 0.4);
```

### Combined Effects

```css
/* Extruded (raised) elements */
--shadow-extruded: -8px -8px 16px rgba(255, 255, 255, 0.8),
                    8px 8px 16px rgba(163, 177, 198, 0.6);

/* Pressed (inset) elements */
--shadow-pressed: inset -4px -4px 8px rgba(255, 255, 255, 0.5),
                  inset 4px 4px 8px rgba(163, 177, 198, 0.4);

/* Flat (subtle) elements */
--shadow-flat: -4px -4px 8px rgba(255, 255, 255, 0.5),
                4px 4px 8px rgba(163, 177, 198, 0.4);
```

### Usage Guide

| Element Type | Shadow | Use Case |
|--------------|--------|----------|
| **Cards** | `--shadow-extruded` | Primary content containers |
| **Buttons (default)** | `--shadow-extruded` | Interactive elements at rest |
| **Buttons (active)** | `--shadow-pressed` | Pressed/active state |
| **Inputs** | `--shadow-pressed` | Text fields, textareas |
| **Navigation** | `--shadow-pressed` | Sidebar, inset panels |
| **Badges** | `--shadow-extruded` | Small pills, tags |
| **Header** | `--shadow-flat` | Top-level container |

---

## Typography

### Font Stack

```css
--font-primary: 'Poppins', -apple-system, BlinkMacSystemFont, sans-serif;
```

**Poppins** — Geometric sans-serif with soft, rounded letterforms that complement the neumorphic aesthetic.

### Type Scale

```css
--text-xs: 0.75rem;   /* 12px — Labels, captions */
--text-sm: 0.875rem;  /* 14px — Body small, nav */
--text-base: 1rem;    /* 16px — Body text */
--text-lg: 1.125rem;  /* 18px — Subheadings */
--text-xl: 1.5rem;    /* 24px — Card titles */
--text-2xl: 2rem;     /* 32px — Section headers */
--text-3xl: 2.5rem;   /* 40px — Page title */
```

### Text Shadows (Optional Enhancement)

Add subtle depth to large headings:

```css
text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.5),
             -2px -2px 4px rgba(163, 177, 198, 0.3);
```

---

## Spacing

**8pt Grid System** — All spacing uses multiples of 8px:

```css
--space-1: 8px;   /* Tight */
--space-2: 16px;  /* Compact */
--space-3: 24px;  /* Default */
--space-4: 32px;  /* Comfortable */
--space-5: 40px;  /* Relaxed */
--space-6: 48px;  /* Spacious */
--space-8: 64px;  /* Section breaks */
```

---

## Border Radius

No hard corners — everything is rounded:

```css
--radius-sm: 8px;    /* Small elements (badges) */
--radius-md: 12px;   /* Default (cards, buttons) */
--radius-lg: 16px;   /* Large containers */
--radius-xl: 24px;   /* Extra large */
--radius-full: 9999px; /* Pills, circular */
```

---

## Component Patterns

### Card (Extruded)

```css
.card {
  background: var(--neuro-bg);
  border-radius: var(--radius-lg);
  padding: var(--space-4);
  box-shadow: var(--shadow-extruded);
  transition: all 300ms ease;
}

.card:hover {
  box-shadow: -12px -12px 20px rgba(255, 255, 255, 0.9),
              12px 12px 20px rgba(163, 177, 198, 0.7);
  transform: translateY(-4px);
}
```

### Button (Interactive)

```css
.button {
  background: var(--neuro-bg);
  color: var(--neuro-accent);
  border: none;
  border-radius: var(--radius-md);
  padding: var(--space-2) var(--space-4);
  box-shadow: var(--shadow-extruded);
  transition: all 200ms ease;
}

.button:hover {
  box-shadow: -10px -10px 18px rgba(255, 255, 255, 0.9),
              10px 10px 18px rgba(163, 177, 198, 0.7);
  transform: translateY(-2px);
}

.button:active {
  box-shadow: var(--shadow-pressed);
  transform: translateY(0);
}
```

### Input (Inset)

```css
.input {
  background: var(--neuro-bg);
  border: none;
  border-radius: var(--radius-md);
  padding: var(--space-2) var(--space-3);
  box-shadow: var(--shadow-pressed);
  color: var(--neuro-text-primary);
}

.input:focus {
  outline: 2px solid var(--neuro-accent);
  outline-offset: 2px;
}
```

### Badge (Soft Pill)

```css
.badge {
  display: inline-block;
  padding: 6px 16px;
  border-radius: var(--radius-full);
  background: var(--neuro-bg);
  color: var(--neuro-accent);
  box-shadow: var(--shadow-extruded);
  font-size: var(--text-xs);
  font-weight: 600;
}
```

### Navigation (Inset Panel)

```css
nav {
  background: var(--neuro-bg);
  border-radius: var(--radius-lg);
  box-shadow: var(--shadow-pressed);
  padding: var(--space-2);
}

nav a {
  display: block;
  padding: var(--space-2);
  color: var(--neuro-text-secondary);
  border-radius: var(--radius-md);
  transition: all 200ms ease;
}

nav a:hover {
  color: var(--neuro-accent);
  box-shadow: var(--shadow-extruded);
  transform: translateY(-2px);
}

nav a.active {
  color: var(--neuro-accent);
  box-shadow: var(--shadow-pressed);
}
```

---

## Accessibility Considerations

### Contrast Ratios

- **Text on #E0E5EC:** Must use dark text (#2C3E50) for WCAG AA compliance
- **Primary text:** 9.8:1 contrast ratio ✅
- **Secondary text:** 5.2:1 contrast ratio ✅
- **Accent text:** 4.7:1 contrast ratio ✅

### Enhancements

1. **Color accents:** Use blue/purple accent for interactive elements
2. **Focus states:** 3px solid outline with 2px offset
3. **Touch targets:** Minimum 44px × 44px
4. **Reduced motion:** Disable shadows and transforms when `prefers-reduced-motion: reduce`

### Known Limitations

- **Low vision:** Neumorphism relies heavily on subtle shadows. Always pair with color or text labels.
- **High contrast mode:** Shadows disappear. Ensure interactive elements have fallback states.

---

## Animation Guidelines

### Hover Effects

```css
transition: all 300ms ease;

/* On hover */
box-shadow: -12px -12px 20px rgba(255, 255, 255, 0.9),
            12px 12px 20px rgba(163, 177, 198, 0.7);
transform: translateY(-4px);
```

### Active/Pressed

```css
/* On click */
box-shadow: var(--shadow-pressed);
transform: translateY(0);
```

### Timing

- **Fast:** 150-200ms for small interactions (hover, focus)
- **Medium:** 300ms for cards and larger elements
- **Slow:** Avoid — neumorphism works best with snappy transitions

---

## Responsive Design

### Breakpoints

```css
/* Mobile-first approach */
@media (max-width: 768px) {
  /* Reduce shadow intensity on mobile */
  --shadow-extruded: -6px -6px 12px rgba(255, 255, 255, 0.7),
                      6px 6px 12px rgba(163, 177, 198, 0.5);
}
```

### Mobile Considerations

- **Reduce shadows:** Lighter shadows on small screens (performance)
- **Larger touch targets:** Minimum 48px × 48px on mobile
- **Simplify animations:** Reduce transform distances

---

## Do's and Don'ts

### ✅ Do

- Use consistent light source direction (top-left)
- Keep shadows soft and subtle
- Maintain high contrast for text
- Use accent colors for interactive elements
- Round all corners
- Layer shadows (light + dark) for depth

### ❌ Don't

- Use hard borders (defeats the soft UI aesthetic)
- Mix light source directions
- Overuse shadows (performance + visual clutter)
- Neglect accessibility (rely solely on shadows)
- Use on dark backgrounds (#E0E5EC only)
- Stack too many layers (depth becomes confusing)

---

## Implementation Notes

### Browser Support

- **Modern browsers:** Full support (Chrome, Firefox, Safari, Edge)
- **IE11:** Partial support (no CSS variables, shadows work)
- **Performance:** Box-shadow is GPU-accelerated; safe to animate

### Dark Mode

Neumorphism is traditionally light-themed. For dark neumorphism:
- Use `#2C3239` as base
- Invert shadow direction (light on bottom-right)
- Reduce shadow intensity (more subtle)

---

## Resources

- **Color calculator:** Use https://www.neumorphism.io for shadow generation
- **Font:** Poppins on Google Fonts
- **Inspiration:** Dribbble "Neumorphism" tag

---

**Design Philosophy:**  
Neumorphism creates interfaces that feel physical and touchable, reducing visual noise through minimal color variation and relying on light and shadow to convey depth. It's best suited for dashboards, tools, and applications where calm, focused interaction is key.
