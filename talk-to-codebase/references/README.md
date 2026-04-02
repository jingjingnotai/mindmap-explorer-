# Style References

This directory contains design system documentation and resources for the talk-to-codebase skill.

## Available Styles

The talk-to-codebase skill supports three distinct visual styles for generated HTML guides:

### 1. Editorial Style (Default)

**Template:** `template.html`

**Aesthetic:**
- Warm, editorial design inspired by magazine layouts
- Dark mode with terracotta (#D4654A) and sage green (#6B8E7F) accents
- Asymmetric grid with sticky sidebar navigation
- Rounded cards with soft shadows
- Inter font family for clean readability

**Best for:**
- Technical documentation requiring approachability
- Team wikis and internal knowledge bases
- Developer onboarding guides
- Projects with a modern, friendly brand

**Example:**
![Editorial Style Preview](https://via.placeholder.com/800x400/0a0e1a/D4654A?text=Editorial+Style)

---

### 2. Bauhaus Style

**Template:** `template-bauhaus.html`  
**Reference:** `bauhaus-style.md`

**Aesthetic:**
- Industrial geometric design following Bauhaus principles
- Primary color palette: Red (#E1000F), Yellow (#FFD700), Blue (#0033A0)
- Basic geometric shapes: Circle, square, triangle
- Futura-style typography (Montserrat geometric sans-serif)
- Bold right angles, 4px borders, 8pt grid system
- Strong contrast and hierarchy

**Best for:**
- System architecture documentation
- Engineering technical specifications
- Infrastructure and DevOps guides
- Projects requiring bold visual hierarchy
- Technical audiences preferring clarity over warmth

**Example:**
![Bauhaus Style Preview](https://via.placeholder.com/800x400/FFFFFF/E1000F?text=Bauhaus+Style)

---

### 3. Neumorphism Style (Soft UI)

**Template:** `template-neumorphism.html`  
**Reference:** `neumorphism-style.md`

**Aesthetic:**
- Clay-like, tactile interface with shadow-based depth
- Monochromatic #E0E5EC background (light gray-blue)
- Dual shadow system: light from top-left, dark from bottom-right
- Extruded shadows for raised elements (cards, buttons)
- Pressed/inset shadows for recessed elements (inputs, navigation)
- Poppins font with soft geometric letterforms
- No hard borders, all rounded corners (8px-24px radius)
- 8pt grid spacing system

**Best for:**
- Dashboards and internal tools requiring calm, focused interaction
- Design-forward applications with minimal visual noise
- Projects emphasizing tactile, physical UI metaphors
- Teams preferring soft, approachable interfaces over high contrast

**Example:**
![Neumorphism Style Preview](https://via.placeholder.com/800x400/E0E5EC/667EEA?text=Neumorphism+Style)

---

## Choosing a Style

### Automatic Selection

When you run `/talk-to-codebase`, the skill uses the **Editorial style by default**.

### Manual Selection

To specify a style, include keywords in your command:

**For Editorial (default):**
```bash
/talk-to-codebase .
# OR
/talk-to-codebase . editorial style
/talk-to-codebase . warm colors
```

**For Bauhaus:**
```bash
/talk-to-codebase . bauhaus style
/talk-to-codebase . geometric design
/talk-to-codebase . industrial aesthetic
/talk-to-codebase . primary colors red yellow blue
```

**For Neumorphism:**
```bash
/talk-to-codebase . neumorphism style
/talk-to-codebase . soft UI
/talk-to-codebase . clay tactile
/talk-to-codebase . extruded pressed shadows
```

---

## Style Comparison

| Feature | Editorial | Bauhaus | Neumorphism |
|---------|-----------|---------|-------------|
| **Color Palette** | Terracotta, sage green, dark grays | Red, yellow, blue primaries + black/white | Monochromatic #E0E5EC (light gray-blue) |
| **Typography** | Inter (humanist sans-serif) | Montserrat (geometric sans-serif) | Poppins (soft geometric sans-serif) |
| **Visual Style** | Soft, rounded, editorial | Sharp, geometric, industrial | Clay-like, tactile, shadow-based depth |
| **Layout** | Asymmetric magazine grid | Right-angle grid system | Symmetric grid with inset/extruded panels |
| **Shapes** | Rounded cards, soft shadows | Circles, squares, bold borders | Rounded cards, dual shadows (no borders) |
| **Borders** | 1-2px subtle borders | 4-8px bold borders | No borders (shadow-only depth) |
| **Best Use** | Friendly documentation | Technical specifications | Dashboards, tools, focused interaction |
| **Tone** | Approachable, modern | Authoritative, precise | Calm, tactile, minimal |

---

## Customization

All three templates are fully customizable. Key customization points:

### Color Tokens

**Editorial** (`template.html`):
```css
:root {
  --bg-primary: #0a0e1a;
  --accent-primary: #3b82f6;
  --accent-secondary: #8b5cf6;
  /* ... */
}
```

**Bauhaus** (`template-bauhaus.html`):
```css
:root {
  --bauhaus-red: #E1000F;
  --bauhaus-yellow: #FFD700;
  --bauhaus-blue: #0033A0;
  /* ... */
}
```

**Neumorphism** (`template-neumorphism.html`):
```css
:root {
  --neuro-bg: #E0E5EC;
  --neuro-accent: #667EEA;
  --shadow-light: -8px -8px 16px rgba(255, 255, 255, 0.8);
  --shadow-dark: 8px 8px 16px rgba(163, 177, 198, 0.6);
  --shadow-extruded: var(--shadow-light), var(--shadow-dark);
  --shadow-pressed: inset -4px -4px 8px rgba(255, 255, 255, 0.5),
                    inset 4px 4px 8px rgba(163, 177, 198, 0.4);
  /* ... */
}
```

### Typography

**Editorial:**
- Primary: Inter
- Code: JetBrains Mono

**Bauhaus:**
- Primary: Montserrat (Futura alternative)
- Code: JetBrains Mono

**Neumorphism:**
- Primary: Poppins
- Code: JetBrains Mono

### Spacing Scale

**Editorial:** 4pt base (4, 8, 12, 16, 20, 24...)  
**Bauhaus:** 8pt base (8, 16, 24, 32, 40, 48...)

---

## Creating Custom Styles

To create your own style variant:

1. **Copy an existing template:**
   ```bash
   cp template.html template-custom.html
   ```

2. **Modify CSS variables** in the `<style>` section

3. **Update SKILL.md** to reference your new template in Step 2

4. **Test with a sample repo:**
   ```bash
   /talk-to-codebase . custom style
   ```

5. **Document your style** in this README

---

## Accessibility

Both styles meet WCAG AA accessibility standards:

- ✅ 4.5:1 minimum contrast ratio for text
- ✅ Keyboard navigation support (skip links, focus states)
- ✅ Screen reader compatible (semantic HTML, ARIA labels)
- ✅ Touch targets ≥44px
- ✅ Reduced motion support

---

## Resources

- **Bauhaus Design System:** See `bauhaus-style.md` for complete design tokens and component patterns
- **Neumorphism Design System:** See `neumorphism-style.md` for shadow system, color palette, and UI patterns
- **Design Styles Catalog:** See `design-styles-catalog.md` for 15 additional design styles ready for implementation
- **Editorial Guidelines:** (Coming soon)
- **Custom Style Template:** (Coming soon)

---

## Contributing

To contribute a new style:

1. Create `template-{your-style}.html`
2. Document design system in `references/{your-style}.md`
3. Update this README with comparison info
4. Submit PR with examples

---

**Last Updated:** March 31, 2026  
**Skill Version:** 1.0+