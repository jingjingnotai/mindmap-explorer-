# Talk to Codebase — Claude Code Skill

Generate professional HTML codebase guides in under 2 minutes. Understand 80% of any codebase in 30 minutes.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Claude Code](https://img.shields.io/badge/Claude_Code-Skill-orange.svg)

---

**Transform any codebase into a beautiful, navigable guide in under 2 minutes.**

Perfect for:
- 🎯 Onboarding new team members
- 📚 Documenting microservices architecture
- 🔍 Understanding legacy codebases
- 🚀 Creating internal developer documentation

---

## Quick Start

```bash
# 1. Install the skill (in Claude Code)
/plugin marketplace add jingjingnotai/mindmap-explorer-
/plugin install talk-to-codebase@mindmap-explorer-

# 2. Use it
cd /path/to/your/repo
/talk-to-codebase .

# 3. Open the generated HTML in your browser
open *-guide.html
```

## What It Does

Quickly analyzes any codebase and generates a beautiful, interactive HTML guide with:

- **Overview** — What it does, tech stack, key metrics
- **Architecture** — Layers, components, data flow visualization
- **Core Flows** — 2-3 critical request traces
- **Key Files** — Priority-ranked file table
- **Data Layer** — Storage, models, state management
- **Integration Points** — External services and configuration
- **Onboarding Path** — Day 1 / Week 1 reading guide

## Features

✅ **Fast** — Generates in under 2 minutes (vs 10+ minutes with previous approaches)
✅ **Professional UI** — Two beautiful themes (dark mode + warm editorial)
✅ **Accessible** — WCAG AA compliant (4.5:1 contrast, keyboard navigation, skip links)
✅ **Responsive** — Mobile-first design with touch targets ≥44px
✅ **Performance Optimized** — No layout shift, reduced motion support, fast fonts
✅ **Reusable Template** — Works for any codebase (Java, Python, Go, TypeScript, etc.)

## Installation

### Using Claude Code Marketplace (Recommended)

In Claude Code, run these commands:

```bash
# Add the marketplace repository
/plugin marketplace add jingjingnotai/mindmap-explorer-

# Install the skill
/plugin install talk-to-codebase@mindmap-explorer-
```

The skill will be automatically installed and ready to use immediately.

### Manual Installation (Alternative)

If you prefer to install manually:

```bash
# Create skill directory
mkdir -p ~/.claude/skills/talk-to-codebase

# Download SKILL.md
curl -o ~/.claude/skills/talk-to-codebase/SKILL.md \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/SKILL.md

# Download template.html
curl -o ~/.claude/skills/talk-to-codebase/template.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template.html

# Restart Claude Code
```

### Verify Installation

After installation, verify the skill is available:

```bash
# In Claude Code
/plugin list

# Should show: talk-to-codebase
```

## Usage

### Basic Usage

```bash
# Navigate to your repository
cd /path/to/your/repo

# Invoke the skill
/talk-to-codebase .

# Open the generated guide
open *-guide.html
```

### Advanced Usage

```bash
# Use with a specific path
/talk-to-codebase /Users/you/projects/my-service

# Use with a remote repo (clone first)
git clone https://github.com/user/repo.git
cd repo
/talk-to-codebase .
```

### What Happens

1. **Quick Exploration** (30 seconds) — Reads 5-6 key files, infers structure from README, entry points, and core files
2. **HTML Generation** (60 seconds) — Substitutes data into template using simple string replacement
3. **Output** — Creates `{repo-name}-guide.html` in your current directory

### Example Output

```
/path/to/your/repo/
└── pluto-guide.html  ← Beautiful HTML documentation
```

**Generated guide includes:**
- Sticky sidebar navigation with scroll-based highlighting
- Numbered sections (01, 02, 03...) with large decorative numbers
- Interactive flow diagrams showing request paths
- Priority-ranked key files table (🔴 🟠 🟡)
- Cards with hover effects and gradient accents
- Code blocks with syntax highlighting
- Responsive design (mobile, tablet, desktop)

### Example Output for Different Repos

| Repo Type | Entry Point Discovery | Key Insights |
|-----------|----------------------|--------------|
| **Spring Boot** | `Application.java`, `pom.xml` | Router config, handlers, DynamoDB/Redis integration |
| **Node.js** | `package.json`, `index.js` | Express routes, middleware, database models |
| **Python** | `main.py`, `requirements.txt` | FastAPI/Flask routes, database connections |
| **Go** | `main.go`, `go.mod` | HTTP handlers, goroutines, database clients |

## Design Themes

The skill includes a professional HTML template with warm, editorial aesthetics:

### Current Template: Editorial Theme
- **Color Palette:** Warm terracotta (#D4654A), sage green (#6B8E7F), cream backgrounds (#FAF8F5)
- **Typography:** Playfair Display (serif headings) + Outfit (body) + JetBrains Mono (code)
- **Layout:** Magazine-style asymmetric grid with sticky sidebar
- **Style:** Humanistic, approachable technical documentation

### Design Features
- **Numbered Sections:** Large decorative numbers (01, 02, 03...)
- **Warm Shadows:** Subtle terracotta-tinted shadows
- **Gradient Accents:** Terracotta-to-amber gradient bars
- **Smooth Animations:** Fade-in sections, hover effects, scroll-based nav highlighting

### Accessibility
- ✅ WCAG AA contrast ratios (4.5:1 minimum)
- ✅ Keyboard navigation with visible focus states (Ctrl+K to focus nav)
- ✅ Skip link for screen readers
- ✅ Semantic HTML with ARIA labels
- ✅ Reduced motion support
- ✅ Touch targets ≥44px for mobile

### Responsive Design
- **Mobile-first:** Optimized for phones, tablets, and desktops
- **Breakpoints:** 768px (tablet), 1200px (desktop)
- **Adaptive Layout:** Sidebar collapses on mobile, flow diagrams stack vertically

## Performance

- **Generation Time:** Under 2 minutes total
- **File Read Limit:** 5-6 files maximum
- **Template Loading:** One-time read, simple string substitution
- **No Complex Rendering:** No nested loops, no dynamic HTML generation

## Customization

### Modify the Template

Edit `~/.claude/skills/talk-to-codebase/template.html` to customize:

- Color scheme (change CSS variables in `:root`)
- Typography (update font families)
- Layout (modify grid/flexbox structure)
- Component styles (cards, tables, badges)

### Change Placeholders

The skill replaces these placeholders during generation:

```
{{SERVICE_NAME}}         → Repository name
{{ISO_DATE}}             → ISO 8601 date
{{FRIENDLY_DATE}}        → Human-readable date
{{DESCRIPTION}}          → Service description
{{LANGUAGE}}             → Primary language
{{FRAMEWORK}}            → Main framework
{{DATABASE}}             → Database type
{{LIBRARIES}}            → Top libraries
{{LOC}}                  → Line count
{{ENTRY_POINT}}          → Main file path
{{SYSTEM_TYPE}}          → Service type
{{FLOW_START}}           → Flow diagram start
{{FLOW_LAYER1}}          → First layer
{{FLOW_LAYER2}}          → Second layer
{{FLOW_END}}             → Flow end
{{ARCHITECTURE_DETAILS}} → Architecture cards (HTML)
{{CORE_FLOWS}}           → Core flow cards (HTML)
{{KEY_FILES_ROWS}}       → Table rows (HTML)
{{DATA_LAYER}}           → Data layer cards (HTML)
{{INTEGRATION_POINTS}}   → Integration cards (HTML)
{{ONBOARDING_EXTRA}}     → Extra onboarding content (HTML)
```

## Troubleshooting

### Installation Issues

**Skill not found after installation**
```bash
# Check if skill is installed
/plugin list

# Should show: talk-to-codebase

# If not found, try installing again
/plugin marketplace add jingjingnotai/mindmap-explorer-
/plugin install talk-to-codebase@mindmap-explorer-
```

**Marketplace not accessible**

If the marketplace installation doesn't work, use manual installation:
```bash
mkdir -p ~/.claude/skills/talk-to-codebase
curl -o ~/.claude/skills/talk-to-codebase/SKILL.md \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/SKILL.md
curl -o ~/.claude/skills/talk-to-codebase/template.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template.html
# Then restart Claude Code
```

**Skill not recognized by Claude Code**
- Start a new conversation
- Try invoking with: `/talk-to-codebase .`
- Check skill files exist: `ls ~/.claude/skills/talk-to-codebase/`

### Usage Issues

**Generation takes too long**
The skill is designed to complete in under 2 minutes. If it's slower:
- Check you're not in a massive monorepo (>100k files)
- Ensure the skill isn't reading too many files (max 5-6)
- Template substitution should be instant (no complex rendering)
- Try a smaller subdirectory first: `/talk-to-codebase ./service/pluto`

**HTML looks broken**
- Open the generated HTML in a modern browser (Chrome, Firefox, Safari, Edge)
- Check browser console for errors (F12 → Console)
- Verify the template.html file is intact: `cat ~/.claude/skills/talk-to-codebase/template.html | head -20`
- Clear browser cache and reload

**Missing fonts or styles**
The template uses Google Fonts (Playfair Display, Outfit, JetBrains Mono):
- Ensure you have internet connection when opening the HTML
- Check browser console for failed font requests
- Font fallbacks: System fonts will be used if Google Fonts fail to load

**Navigation not working**
- Ensure JavaScript is enabled in your browser
- Check console for errors
- The guide requires modern browser features (Intersection Observer API)

### Getting Help

If you encounter issues:
1. Check this troubleshooting section
2. Search existing [GitHub Issues](https://github.com/jingjingnotai/mindmap-explorer-/issues)
3. Open a new issue with:
   - Your operating system
   - Claude Code version
   - Error messages or screenshots
   - Generated HTML file (if applicable)

## Tech Stack

- **Language:** Markdown (skill definition), HTML/CSS (template)
- **Framework:** Claude Code Skills
- **Dependencies:** None (pure HTML/CSS/vanilla JS)
- **Browser Support:** Modern browsers with CSS Grid and Flexbox

## Contributing

This skill is designed to be modified! Feel free to:

1. **Customize the template** — Change colors, fonts, layout
2. **Add new sections** — Extend with API docs, deployment guides, etc.
3. **Improve exploration logic** — Make file discovery smarter
4. **Share your improvements** — Submit PRs or share your customized version

## License

MIT License — Free to use, modify, and distribute

## Credits

- **Design System:** UI/UX Pro Max principles
- **Accessibility:** WCAG 2.1 AA standards
- **Typography:** Inter by Rasmus Andersson, JetBrains Mono by JetBrains

## Related Skills

- **ui-ux-pro-max** — Design intelligence for UI/UX decisions
- **frontend-design** — Create distinctive frontend interfaces

---

**Generated with Claude Code • talk-to-codebase skill**
