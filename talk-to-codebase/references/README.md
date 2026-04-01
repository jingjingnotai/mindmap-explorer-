# Style References

This directory contains design system documentation and resources for the talk-to-codebase skill.

## Available Styles

The talk-to-codebase skill supports two distinct visual styles for generated HTML guides:

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

---

## Style Comparison

| Feature | Editorial | Bauhaus |
|---------|-----------|---------|
| **Color Palette** | Terracotta, sage green, dark grays | Red, yellow, blue primaries + black/white |
| **Typography** | Inter (humanist sans-serif) | Montserrat (geometric sans-serif) |
| **Visual Style** | Soft, rounded, editorial | Sharp, geometric, industrial |
| **Layout** | Asymmetric magazine grid | Right-angle grid system |
| **Shapes** | Rounded cards, soft shadows | Circles, squares, bold borders |
| **Borders** | 1-2px subtle borders | 4-8px bold borders |
| **Best Use** | Friendly documentation | Technical specifications |
| **Tone** | Approachable, modern | Authoritative, precise |

---

## Customization

Both templates are fully customizable. Key customization points:

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

### Typography

**Editorial:**
- Primary: Inter
- Code: JetBrains Mono

**Bauhaus:**
- Primary: Montserrat (Futura alternative)
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