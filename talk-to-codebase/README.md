# Talk to Codebase — Claude Code Skill

Generate professional HTML codebase guides in under 2 minutes. Understand 80% of any codebase in 30 minutes.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Claude Code](https://img.shields.io/badge/Claude_Code-Skill-orange.svg)
![Version](https://img.shields.io/badge/version-1.0.0-green.svg)

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
# 1. Install the skill
git clone https://github.com/jingjingnotai/mindmap-explorer-.git
ln -s "$(pwd)/mindmap-explorer-/talk-to-codebase" ~/.claude/skills/talk-to-codebase

# 2. Use it in Claude Code
cd /path/to/your/repo
/talk-to-codebase .

# 3. Choose your style (optional)
/talk-to-codebase . cyberpunk style
/talk-to-codebase . bauhaus style
/talk-to-codebase . neumorphism style

# 4. Open the generated HTML in your browser
open *-guide.html
```

## What It Does

Quickly analyzes any codebase and generates a beautiful, interactive HTML guide with:

- **Overview** — What it does, tech stack, key metrics
- **Problem & Users** — Problem statement and target users
- **Data Flow** — Entry, processing, storage, guarantees
- **Architecture** — System diagram with emoji icons, component layers, data flow visualization
- **Core Flows** — 2-3 critical request traces
- **Key Files** — Priority-ranked file table
- **Data Layer** — Storage, models, state management
- **Integration Points** — External services and configuration
- **Onboarding Path** — Day 1 / Week 1 / Week 2 reading guide
- **Failure Modes** — Error scenarios and mitigation strategies
- **Coupling Points** — Dependencies and integration touchpoints
- **Scaling & Bottlenecks** — Performance characteristics

## Features

✅ **Fast** — Generates in under 2 minutes (vs 10+ minutes with previous approaches)  
✅ **4 Beautiful Themes** — Editorial (default), Bauhaus, Neumorphism, Cyberpunk  
✅ **Architecture Diagrams** — Emoji-based system diagrams with icons  
✅ **Accessible** — WCAG AA compliant (4.5:1 contrast, keyboard navigation, skip links)  
✅ **Responsive** — Mobile-first design with touch targets ≥44px  
✅ **Performance Optimized** — No layout shift, reduced motion support, fast fonts  
✅ **Reusable Template** — Works for any codebase (Java, Python, Go, TypeScript, etc.)

## Design Themes

### 1. Editorial (Default)
- **Aesthetic:** Warm editorial design with dark mode
- **Colors:** Terracotta (#D4654A), sage green (#6B8E7F)
- **Typography:** Inter font family
- **Style:** Approachable, modern, magazine-style layout

### 2. Bauhaus
- **Aesthetic:** Industrial geometric design
- **Colors:** Primary red (#E1000F), yellow (#FFD700), blue (#0033A0)
- **Typography:** Montserrat (geometric sans-serif)
- **Style:** Bold, structured, Futura-inspired

### 3. Neumorphism (Soft UI)
- **Aesthetic:** Clay-like tactile interface
- **Colors:** Monochromatic #E0E5EC background
- **Typography:** Poppins (soft geometric)
- **Style:** Shadow-based depth, no hard borders

### 4. Cyberpunk
- **Aesthetic:** Neon terminal with CRT effects
- **Colors:** Cyan (#00FFFF), pink (#FF00FF), yellow (#FFFF00), green (#00FF00)
- **Typography:** JetBrains Mono (monospace)
- **Style:** Glitch animations, scanlines, hacker aesthetic

**See [references/README.md](references/README.md) for detailed style comparisons.**

## Installation

### Prerequisites

- [Claude Code](https://claude.ai/code) installed
- Git (for cloning)

### Install via Git Clone + Symlink (Recommended)

```bash
# Clone the repository
git clone https://github.com/jingjingnotai/mindmap-explorer-.git

# Navigate to the parent directory
cd mindmap-explorer-

# Create symlink to Claude skills directory
ln -s "$(pwd)/talk-to-codebase" ~/.claude/skills/talk-to-codebase

# Verify installation
ls -la ~/.claude/skills/talk-to-codebase
```

**Why symlink?** Changes you make to the cloned repo are automatically reflected in Claude Code.

### Install via Direct Copy (Alternative)

```bash
# Clone the repository
git clone https://github.com/jingjingnotai/mindmap-explorer-.git

# Copy to skills directory
cp -r mindmap-explorer-/talk-to-codebase ~/.claude/skills/talk-to-codebase

# Verify installation
ls -la ~/.claude/skills/talk-to-codebase
```

### Install via Manual Download (No Git)

```bash
# Create skill directory
mkdir -p ~/.claude/skills/talk-to-codebase

# Download required files
curl -o ~/.claude/skills/talk-to-codebase/SKILL.md \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/SKILL.md

curl -o ~/.claude/skills/talk-to-codebase/template.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template.html

curl -o ~/.claude/skills/talk-to-codebase/template-bauhaus.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template-bauhaus.html

curl -o ~/.claude/skills/talk-to-codebase/template-neumorphism.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template-neumorphism.html

curl -o ~/.claude/skills/talk-to-codebase/template-cyberpunk.html \
  https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase/template-cyberpunk.html
```

### Verify Installation

After installation, start a new Claude Code conversation and verify:

```bash
# In Claude Code
/help

# Look for "talk-to-codebase" in available skills
# Or try invoking directly:
/talk-to-codebase .
```

## Usage

### Basic Usage (Editorial Style)

```bash
# Navigate to your repository
cd /path/to/your/repo

# Generate guide with default Editorial style
/talk-to-codebase .

# Open the generated guide
open {repo-name}-guide.html
```

### With Style Selection

```bash
# Cyberpunk style (neon terminal)
/talk-to-codebase . cyberpunk style

# Bauhaus style (geometric industrial)
/talk-to-codebase . bauhaus style

# Neumorphism style (soft UI)
/talk-to-codebase . neumorphism style

# Editorial style (explicit)
/talk-to-codebase . editorial style
```

### Advanced Usage

```bash
# Use with a specific path
/talk-to-codebase /Users/you/projects/my-service

# Use with a remote repo (clone first)
git clone https://github.com/user/repo.git
cd repo
/talk-to-codebase .

# Generate for monorepo subdirectory
/talk-to-codebase ./services/pluto
```

### What Happens

1. **Quick Exploration** (30 seconds) — Reads 5-6 key files, infers structure from README, entry points, and core files
2. **Style Selection** — Matches keywords to select template (Editorial, Bauhaus, Neumorphism, Cyberpunk)
3. **HTML Generation** (60 seconds) — Substitutes data into template using simple string replacement
4. **Output** — Creates `{repo-name}-guide.html` in your current directory

### Example Output

```
/path/to/your/repo/
└── pluto-guide.html  ← Beautiful HTML documentation
```

**Generated guide includes:**
- Sticky header with service name and generation date
- Terminal menu navigation (Cyberpunk) or sidebar navigation (other styles)
- Animated section transitions and hover effects
- Interactive flow diagrams with arrows
- Architecture diagrams with emoji icons (📄 🔍 🎨 📝 🗂️)
- Priority-ranked key files table
- Cards with style-specific aesthetics
- Responsive design (mobile, tablet, desktop)

### Example Output for Different Repos

| Repo Type | Entry Point Discovery | Key Insights |
|-----------|----------------------|--------------|
| **Spring Boot** | `Application.java`, `pom.xml` | Router config, handlers, DynamoDB/Redis integration |
| **Node.js** | `package.json`, `index.js` | Express routes, middleware, database models |
| **Python** | `main.py`, `requirements.txt` | FastAPI/Flask routes, database connections |
| **Go** | `main.go`, `go.mod` | HTTP handlers, goroutines, database clients |

## Architecture Diagrams

All generated guides include emoji-based architecture diagrams:

**System Flow:**
```
📄 SKILL.md → 🔍 Codebase Explorer → 🎨 Template Engine → 📝 HTML Output
                                            ↑
                                      🗂️ Templates
                                            ↓
                              📖 Editorial | 🔷 Bauhaus | 🧊 Neumorphism | ⚡ Cyberpunk
```

Diagrams adapt to each style:
- **Editorial:** Warm shadows and terracotta borders
- **Bauhaus:** Bold primary color borders
- **Neumorphism:** Extruded shadow effects
- **Cyberpunk:** Neon glows and terminal aesthetics

## Performance

- **Generation Time:** Under 2 minutes total
- **File Read Limit:** 5-6 files maximum
- **Template Loading:** One-time read, simple string substitution
- **No Complex Rendering:** No nested loops, no dynamic HTML generation
- **Output Size:** ~25-30KB per guide

## Customization

### Modify Templates

Edit templates in `~/.claude/skills/talk-to-codebase/`:

- `template.html` — Editorial style
- `template-bauhaus.html` — Bauhaus style
- `template-neumorphism.html` — Neumorphism style
- `template-cyberpunk.html` — Cyberpunk style

**Common customizations:**
- Color scheme (change CSS variables in `:root`)
- Typography (update font families)
- Layout (modify grid/flexbox structure)
- Component styles (cards, tables, badges)

### Placeholders

The skill replaces these placeholders during generation:

```
{{SERVICE_NAME}}             → Repository name
{{ISO_DATE}}                 → ISO 8601 date (2026-04-01)
{{FRIENDLY_DATE}}            → Human-readable date (April 1, 2026)
{{DESCRIPTION}}              → Service description
{{LANGUAGE}}                 → Primary language
{{FRAMEWORK}}                → Main framework
{{DATABASE}}                 → Database type
{{LIBRARIES}}                → Top libraries
{{LOC}}                      → Line count
{{ENTRY_POINT}}              → Main file path
{{SYSTEM_TYPE}}              → Service type (Web Service, CLI Tool, etc.)
{{PE_QUESTION_1}}            → Problem & Users section HTML
{{PE_QUESTION_2}}            → Data Flow section HTML
{{PE_QUESTION_3}}            → Failure Modes section HTML
{{PE_QUESTION_4}}            → Coupling Points section HTML
{{PE_QUESTION_5}}            → Scaling & Bottlenecks section HTML
{{FLOW_START}}               → Flow diagram start
{{FLOW_LAYER1}}              → First layer
{{FLOW_LAYER2}}              → Second layer
{{FLOW_END}}                 → Flow end
{{ARCHITECTURE_DIAGRAM}}     → System diagram with emoji icons
{{ARCHITECTURE_DETAILS}}     → Architecture cards (HTML)
{{CORE_FLOWS}}               → Core flow cards (HTML)
{{KEY_FILES_ROWS}}           → Table rows (HTML)
{{DATA_LAYER}}               → Data layer cards (HTML)
{{INTEGRATION_POINTS}}       → Integration cards (HTML)
{{ONBOARDING_EXTRA}}         → Extra onboarding content (HTML)
```

## Troubleshooting

### Installation Issues

**Skill not found in Claude Code**
```bash
# Check if skill directory exists
ls -la ~/.claude/skills/talk-to-codebase/

# Should contain: SKILL.md, template*.html

# If missing, reinstall:
ln -s "$(pwd)/mindmap-explorer-/talk-to-codebase" ~/.claude/skills/talk-to-codebase
```

**Symlink issues on Windows**
Windows requires administrator privileges for symlinks. Use direct copy instead:
```bash
cp -r mindmap-explorer-/talk-to-codebase ~/.claude/skills/talk-to-codebase
```

**Skill not recognized by Claude Code**
- Start a new conversation in Claude Code
- Try invoking with: `/talk-to-codebase .`
- Check that SKILL.md exists: `cat ~/.claude/skills/talk-to-codebase/SKILL.md | head -5`

### Usage Issues

**Generation takes too long**
The skill is designed to complete in under 2 minutes. If it's slower:
- Check you're not in a massive monorepo (>100k files)
- Ensure the skill isn't reading too many files (max 5-6)
- Template substitution should be instant
- Try a smaller subdirectory first: `/talk-to-codebase ./service/pluto`

**HTML looks broken**
- Open the generated HTML in a modern browser (Chrome, Firefox, Safari, Edge)
- Check browser console for errors (F12 → Console)
- Verify template files are intact: `cat ~/.claude/skills/talk-to-codebase/template-cyberpunk.html | head -20`
- Clear browser cache and reload

**Missing fonts or styles**
Templates use Google Fonts (JetBrains Mono, Inter, Montserrat, Poppins):
- Ensure you have internet connection when opening the HTML
- Check browser console for failed font requests
- Font fallbacks: System fonts will be used if Google Fonts fail to load

**Navigation not working**
- Ensure JavaScript is enabled in your browser
- Check console for errors
- The guide requires modern browser features (smooth scroll, animations)

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

- **Language:** Markdown (skill definition), HTML/CSS (templates)
- **Framework:** Claude Code Skills
- **Dependencies:** None (pure HTML/CSS/vanilla JS)
- **Browser Support:** Modern browsers with CSS Grid, Flexbox, and Intersection Observer API

## Contributing

This skill is designed to be modified! Contributions welcome:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/new-style`)
3. **Make your changes** (new templates, improved logic, bug fixes)
4. **Test thoroughly** (generate guides for 3+ different repos)
5. **Submit a pull request**

### Ideas for Contributions

- 🎨 **New design styles** (see `references/design-styles-catalog.md` for 15 additional styles)
- 🔍 **Smarter file discovery** (better entry point detection)
- 📊 **Enhanced diagrams** (SVG-based, more interactive)
- 🌐 **Internationalization** (multi-language support)
- 📱 **Mobile improvements** (better touch interactions)

## Roadmap

- [ ] Add 15 additional design styles from catalog
- [ ] SVG-based interactive architecture diagrams
- [ ] Support for API documentation sections
- [ ] Deployment guide sections
- [ ] Multi-language guide generation (non-English)
- [ ] Export to PDF feature
- [ ] Integration with common documentation platforms (GitBook, Docusaurus)

## License

MIT License — Free to use, modify, and distribute.

See [LICENSE](LICENSE) for details.

## Credits

- **Design System:** UI/UX Pro Max principles, WCAG 2.1 AA standards
- **Typography:** Inter (Rasmus Andersson), JetBrains Mono (JetBrains), Montserrat (Julieta Ulanovsky), Poppins (Indian Type Foundry)
- **Inspiration:** Bauhaus movement, neumorphism design trend, cyberpunk aesthetics
- **Tool:** Built with [Claude Code](https://claude.ai/code)

## Related Resources

- **[Design Styles Catalog](references/design-styles-catalog.md)** — 15 additional design styles ready for implementation
- **[Style Comparison](references/README.md)** — Detailed comparison of all available styles
- **[SKILL.md](SKILL.md)** — Complete skill implementation logic

---

**Generated with Claude Code • talk-to-codebase skill v1.0.0**
