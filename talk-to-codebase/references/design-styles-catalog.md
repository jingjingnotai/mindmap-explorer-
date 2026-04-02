# Design Styles Catalog

A comprehensive collection of 15 distinct design styles for the talk-to-codebase skill. Each style can be implemented as a new HTML template following the established pattern.

---

## 1. Minimalist Modern

**Aesthetic:**
- Generous whitespace and clean layouts
- Background #fafafa, text #111
- Inter font family with line-height ≥1.6
- Spacious typography with clear hierarchy
- Fixed top navigation with subtle 1px divider
- Subtle shadow lift on hover (translateY -2px)
- Black, white, and gray only—no flashy gradients

**Best for:**
- Corporate portfolios
- Professional agency websites
- SaaS landing pages
- Business documentation

**Key Design Tokens:**
```css
:root {
  --minimal-bg: #fafafa;
  --minimal-text: #111;
  --minimal-border: #e0e0e0;
  --minimal-shadow: 0 2px 8px rgba(0,0,0,0.08);
  --minimal-shadow-hover: 0 4px 12px rgba(0,0,0,0.12);
  --font-primary: 'Inter', sans-serif;
  --line-height: 1.6;
  --space-base: 8px;
}
```

---

## 2. Neo-Brutalism

**Aesthetic:**
- High-saturation colors (yellow/pink/blue)
- 3px solid black borders on all elements
- Space Mono font
- Asymmetrical layout
- Pressed button effect (offset box-shadow)
- Sharp edges—no rounded corners
- Emojis and hand-drawn decorations
- Bold, rebellious, 90s website energy

**Best for:**
- Creative agency portfolios
- Indie game studios
- Street art galleries
- Youth-oriented brands

**Key Design Tokens:**
```css
:root {
  --brutal-yellow: #FFD700;
  --brutal-pink: #FF006E;
  --brutal-blue: #00B4D8;
  --brutal-black: #000;
  --brutal-white: #FFF;
  --brutal-border: 3px solid #000;
  --brutal-shadow-pressed: 4px 4px 0 #000;
  --font-primary: 'Space Mono', monospace;
  --radius: 0; /* No rounded corners */
}
```

---

## 3. Glassmorphism

**Aesthetic:**
- Flowing gradient backgrounds (blue-purple tones)
- backdrop-filter: blur(20px)
- background: rgba(255,255,255,0.1)
- Thin 1px white borders
- White/semi-transparent white text
- Floating geometric shapes (gradient spheres)
- Frosted glass navigation bar
- Light, airy, futuristic

**Best for:**
- Modern SaaS products
- Tech startups
- Cryptocurrency platforms
- Futuristic dashboards

**Key Design Tokens:**
```css
:root {
  --glass-bg-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  --glass-card-bg: rgba(255, 255, 255, 0.1);
  --glass-border: rgba(255, 255, 255, 0.2);
  --glass-text: rgba(255, 255, 255, 0.95);
  --glass-blur: blur(20px);
  --glass-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
}
```

---

## 4. Japanese Magazine Style

**Aesthetic:**
- Warm off-white and gray tones with deep red accents
- Asymmetrical grid with varied image sizes
- Noto Serif SC font
- Large whitespace
- Vertical text layout support
- Handwritten annotations and arrows
- Film-like sepia filter on image hover
- Calm, artistic, print magazine feel

**Best for:**
- Photography portfolios
- Art galleries
- Editorial content
- Cultural institutions

**Key Design Tokens:**
```css
:root {
  --jp-bg: #F5F3F0;
  --jp-text: #3A3A3A;
  --jp-accent: #8B0000;
  --jp-gray: #D0CCC7;
  --font-primary: 'Noto Serif SC', serif;
  --sepia-filter: sepia(0.3) contrast(1.1);
}
```

---

## 5. Cyberpunk

**Aesthetic:**
- Deep black background (#000)
- Neon cyan/pink/yellow text
- JetBrains Mono font
- Glitch-style animated headings
- Terminal interface layout with blinking cursor
- Scanline effects and noise textures
- Neon glow box-shadows
- Matrix-style terminal aesthetic

**Best for:**
- Developer portfolios
- Hacker/tech blogs
- Gaming communities
- Tech conferences

**Key Design Tokens:**
```css
:root {
  --cyber-bg: #000;
  --cyber-cyan: #00FFFF;
  --cyber-pink: #FF00FF;
  --cyber-yellow: #FFFF00;
  --cyber-green: #00FF00;
  --font-primary: 'JetBrains Mono', monospace;
  --glow-cyan: 0 0 10px #00FFFF, 0 0 20px #00FFFF;
  --glow-pink: 0 0 10px #FF00FF, 0 0 20px #FF00FF;
}
```

---

## 6. Memphis

**Aesthetic:**
- Bright pastel colors (mint/coral/lavender)
- Geometric patterns (dots/waves/semi-circles)
- Thick black borders
- Slight random rotations
- Rounded sans-serif fonts
- Playful, asymmetrical layout
- Bouncy hover effects
- 1980s Memphis design inspiration

**Best for:**
- Creative studios
- Children's products
- Fashion brands
- Event websites

**Key Design Tokens:**
```css
:root {
  --memphis-mint: #98D8C8;
  --memphis-coral: #F67280;
  --memphis-lavender: #C7CEEA;
  --memphis-yellow: #FFE66D;
  --memphis-black: #000;
  --memphis-border: 4px solid #000;
  --pattern-dots: radial-gradient(circle, #000 2px, transparent 2px);
}
```

---

## 7. Swiss International Style

**Aesthetic:**
- Strict 12-column grid system
- Asymmetrical but balanced layout
- Helvetica font with strong size contrast
- Black, white, gray + single accent color (red)
- Black-and-white photography
- No decoration
- Uppercase sans-serif navigation (0.2em letter-spacing)
- Clean, rational, highly structured

**Best for:**
- Corporate websites
- Architecture firms
- Museums
- Design studios

**Key Design Tokens:**
```css
:root {
  --swiss-black: #000;
  --swiss-white: #FFF;
  --swiss-gray: #808080;
  --swiss-red: #E30613;
  --font-primary: 'Helvetica Neue', Helvetica, sans-serif;
  --grid-columns: 12;
  --letter-spacing-nav: 0.2em;
}
```

---

## 8. Bauhaus

**Aesthetic:**
- Primary colors (red, yellow, blue) + black, white, gray
- Geometric shapes (circle/square/triangle)
- Futura or geometric sans-serif fonts
- "Form follows function" principle
- No unnecessary decoration
- Asymmetrical yet balanced
- Industrial-style buttons and cards
- Sharp edges
- Geometric overlap and slicing effects
- 1920s German design inspiration

**Best for:**
- Architecture documentation
- Engineering technical specifications
- Infrastructure guides
- Design system documentation

**Key Design Tokens:**
```css
:root {
  --bauhaus-red: #E1000F;
  --bauhaus-yellow: #FFD700;
  --bauhaus-blue: #0033A0;
  --bauhaus-black: #000;
  --bauhaus-white: #FFF;
  --bauhaus-gray: #808080;
  --font-primary: 'Montserrat', 'Futura', sans-serif;
  --shape-circle: 50%;
  --shape-square: 0;
  --grid-base: 8px;
}
```

---

## 9. Organic Natural

**Aesthetic:**
- Earthy tones (terracotta/sand/sage green)
- Soft UI design with rounded elements (20px+ radius)
- Layered soft shadows (raised outer, inset inner)
- Irregular SVG blob shapes
- Handwritten + rounded sans-serif fonts
- Natural texture backgrounds
- Elastic button animations
- Warm, calming, nature-friendly

**Best for:**
- Sustainable brands
- Wellness products
- Food/beverage companies
- Environmental organizations

**Key Design Tokens:**
```css
:root {
  --organic-terracotta: #D4654A;
  --organic-sand: #E8D5C4;
  --organic-sage: #6B8E7F;
  --organic-cream: #F5F1E8;
  --organic-brown: #6B4E3D;
  --shadow-soft: -8px -8px 16px rgba(255,255,255,0.8),
                 8px 8px 16px rgba(0,0,0,0.1);
  --radius-organic: 24px;
}
```

---

## 10. Acid Design

**Aesthetic:**
- High-saturation gradients (pink/purple/green with liquid flow)
- Gothic or sharp sans-serif fonts
- Chrome metallic textures (silver gradients with reflective highlights)
- Distorted grids or liquid textures
- 3D elements (metal spheres, glass objects)
- Layered overlapping typography
- Psychedelic and experimental
- Y2K + cyberpunk mix

**Best for:**
- Music labels
- Electronic music festivals
- Experimental art galleries
- Youth culture brands

**Key Design Tokens:**
```css
:root {
  --acid-pink: #FF00FF;
  --acid-purple: #8B00FF;
  --acid-green: #00FF7F;
  --acid-chrome: linear-gradient(135deg, #C0C0C0, #E8E8E8, #808080);
  --acid-gradient: linear-gradient(135deg, #FF00FF 0%, #8B00FF 50%, #00FF7F 100%);
  --font-primary: 'Archivo Black', sans-serif;
}
```

---

## 11. Y2K / Frutiger Aero

**Aesthetic:**
- Early 2000s visuals
- Glossy semi-transparent buttons (white-to-transparent gradients)
- Blue sky with clouds
- Water ripple textures
- Bubble animations
- Sky blue, silver, white palette
- Rounded sans-serif fonts
- Glassy but plastic and glossy
- Stars, butterflies, geometric grids
- Windows Vista-era futurism

**Best for:**
- Nostalgic personal homepages
- Retro tech products
- Gaming communities
- Pop culture websites

**Key Design Tokens:**
```css
:root {
  --y2k-sky: #87CEEB;
  --y2k-silver: #C0C0C0;
  --y2k-white: #FFF;
  --y2k-gradient: linear-gradient(to bottom, rgba(255,255,255,0.6), rgba(255,255,255,0));
  --y2k-glow: 0 0 20px rgba(255,255,255,0.8);
  --font-primary: 'Segoe UI', Tahoma, sans-serif;
}
```

---

## 12. Neumorphism

**Aesthetic:**
- Background #E0E5EC
- Box-shadow-based depth (no borders)
- Raised elements: light top-left, dark bottom-right outer shadows
- Inset elements: inner shadows
- Monochromatic color variations
- Rounded corners (12-20px)
- No hard borders—edges defined by shadows
- Line icons
- Clean, soft, tactile, clay-like interface

**Best for:**
- Dashboards
- Internal tools
- Design-forward applications
- Calm, focused interaction

**Key Design Tokens:**
```css
:root {
  --neuro-bg: #E0E5EC;
  --neuro-text: #2C3E50;
  --neuro-accent: #667EEA;
  --shadow-light: -8px -8px 16px rgba(255, 255, 255, 0.8);
  --shadow-dark: 8px 8px 16px rgba(163, 177, 198, 0.6);
  --shadow-extruded: var(--shadow-light), var(--shadow-dark);
  --shadow-pressed: inset -4px -4px 8px rgba(255, 255, 255, 0.5),
                    inset 4px 4px 8px rgba(163, 177, 198, 0.4);
  --radius: 16px;
}
```

---

## 13. Vaporwave

**Aesthetic:**
- Pink-purple-cyan gradient background
- Floating Roman bust sculptures
- Windows 95-style UI windows
- Times New Roman or VCR OSD Mono fonts
- Palm tree silhouettes
- Perspective grid floors
- Japanese katakana text
- CRT scanline effects
- Nostalgic and surreal
- Late 90s desktop aesthetic

**Best for:**
- Music players
- Art projects
- Retro gaming sites
- Experimental portfolios

**Key Design Tokens:**
```css
:root {
  --vapor-pink: #FF6AD5;
  --vapor-purple: #C774E8;
  --vapor-cyan: #00FFFF;
  --vapor-gradient: linear-gradient(135deg, #FF6AD5 0%, #C774E8 50%, #00FFFF 100%);
  --font-primary: 'Times New Roman', serif;
  --font-mono: 'VCR OSD Mono', monospace;
  --scanline: repeating-linear-gradient(0deg, rgba(0,0,0,0.15), rgba(0,0,0,0.15) 1px, transparent 1px, transparent 2px);
}
```

---

## 14. Pixel Art

**Aesthetic:**
- 8-bit pixel art visuals
- 16x16 pixel grid
- Limited retro palette (C64/Game Boy colors)
- Press Start 2P pixel font
- Pixelated borders and buttons
- image-rendering: pixelated
- Pixel stars, clouds, cursors
- RPG interface layout (HP bars/dialog boxes/inventory grid)
- Sprite breathing animations
- NES/Game Boy inspiration

**Best for:**
- Game portfolios
- Retro game studios
- Indie game documentation
- Pixel art galleries

**Key Design Tokens:**
```css
:root {
  --pixel-black: #0F0F0F;
  --pixel-white: #F0F0F0;
  --pixel-red: #FF0040;
  --pixel-blue: #0080FF;
  --pixel-green: #00FF80;
  --pixel-yellow: #FFFF00;
  --font-primary: 'Press Start 2P', monospace;
  --pixel-size: 16px;
}

img, canvas {
  image-rendering: pixelated;
  image-rendering: -moz-crisp-edges;
  image-rendering: crisp-edges;
}
```

---

## 15. Art Deco

**Aesthetic:**
- Black and gold (#000/#FFD700/#D4AF37)
- Deep blue accents
- Tall, narrow serif fonts (Cinzel/Poiret One)
- Geometric sans-serif alternatives
- Strict symmetrical layout
- Geometric decorations (fan shapes, zigzags, sunbursts)
- Stepped or zigzag border lines
- Gold gradient metallic effects
- The Great Gatsby inspiration
- Jazz Age luxury

**Best for:**
- Luxury event invitations
- High-end product launches
- Hotel/restaurant websites
- Premium brand experiences

**Key Design Tokens:**
```css
:root {
  --deco-black: #000;
  --deco-gold: #FFD700;
  --deco-gold-dark: #D4AF37;
  --deco-blue: #003366;
  --deco-white: #FFF;
  --font-primary: 'Cinzel', serif;
  --font-secondary: 'Poiret One', cursive;
  --gold-gradient: linear-gradient(135deg, #FFD700 0%, #D4AF37 50%, #FFD700 100%);
}
```

---

## Usage Recommendations

### Commercial Projects
- Minimalist Modern
- Swiss International Style
- Glassmorphism
- Neumorphism

### Personal Expression
- Cyberpunk
- Vaporwave
- Pixel Art
- Acid Design

### Artistic Projects
- Japanese Magazine Style
- Memphis
- Organic Natural
- Art Deco

### Retro Themes
- Y2K / Frutiger Aero
- Bauhaus
- Neo-Brutalism

---

## Implementation Notes

When creating a new template based on these styles:

1. **Copy an existing template** (e.g., `template.html`) as a starting point
2. **Modify CSS variables** in the `:root` section to match the style's design tokens
3. **Adjust typography** (font families, sizes, line-heights)
4. **Update color palette** throughout the stylesheet
5. **Add style-specific effects** (animations, shadows, filters)
6. **Update SKILL.md** to reference the new template
7. **Test with sample codebases** to verify the style works across different content types
8. **Document the style** in `references/` directory

---

**Last Updated:** April 1, 2026  
**Version:** 1.0
