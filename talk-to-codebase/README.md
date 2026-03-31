# Talk to Codebase — Claude Code Skill

Generate professional HTML codebase guides in under 2 minutes. Understand 80% of any codebase in 30 minutes.

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
✅ **Professional UI** — Dark mode design following UI/UX Pro Max principles
✅ **Accessible** — WCAG AA compliant (4.5:1 contrast, keyboard navigation, skip links)
✅ **Responsive** — Mobile-first design with touch targets ≥44px
✅ **Performance Optimized** — No layout shift, reduced motion support, fast fonts
✅ **Reusable Template** — Works for any codebase (Java, Python, Go, TypeScript, etc.)

## Preview

The generated HTML includes:

- **Sticky header** with service name and generation date
- **Interactive navigation** with smooth scrolling
- **Visual flow diagrams** showing request paths
- **Hover effects** on cards and tables
- **Code syntax highlighting** for file paths
- **Keyboard shortcuts** (Ctrl+K to focus navigation)

## Installation

```bash
# Create skill directory
mkdir -p ~/.claude/skills/talk-to-codebase

# Copy skill files
cp SKILL.md ~/.claude/skills/talk-to-codebase/
cp template.html ~/.claude/skills/talk-to-codebase/

# Verify installation
ls ~/.claude/skills/talk-to-codebase/
# Should show: SKILL.md  template.html
```

## Usage

### From Claude Code

```bash
# Invoke the skill with a repository path
/talk-to-codebase /path/to/your/repo

# Or just the current directory
/talk-to-codebase .
```

### What Happens

1. **Quick Exploration** (30 seconds) — Reads 5-6 key files, infers structure
2. **HTML Generation** (60 seconds) — Substitutes data into template
3. **Output** — Creates `{repo-name}-guide.html` in your current directory

### Example Output Location

```
/path/to/your/repo/
└── my-service-guide.html  ← Open this in your browser
```

## Design System

The template follows professional design principles:

### Color Tokens
- **Primary Background:** `#0a0e1a` (dark blue-black)
- **Secondary Background:** `#111827` (slate)
- **Primary Accent:** `#3b82f6` (blue)
- **Secondary Accent:** `#8b5cf6` (purple)
- **Success:** `#10b981` (green)
- **Warning:** `#f59e0b` (amber)

### Typography
- **Headings:** Inter (400/500/600/700)
- **Code:** JetBrains Mono (400/500)
- **Base Size:** 16px (WCAG AA compliant)
- **Line Height:** 1.6 (body), 1.1 (headings)

### Spacing
- **4pt Base Grid** — Consistent spacing scale
- **Touch Targets** — Minimum 44px for mobile
- **Responsive Breakpoint** — 768px

### Accessibility
- ✅ WCAG AA contrast ratios (4.5:1 minimum)
- ✅ Keyboard navigation with visible focus states
- ✅ Skip link for screen readers
- ✅ Semantic HTML with ARIA labels
- ✅ Reduced motion support

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

### Skill not found
```bash
# Check skill is installed
ls ~/.claude/skills/talk-to-codebase/

# Should show: SKILL.md  template.html
```

### Generation takes too long
The skill is designed to complete in under 2 minutes. If it's slower:
- Check you're not in a massive monorepo (>100k files)
- Ensure the skill isn't reading too many files (max 5-6)
- Template substitution should be instant (no complex rendering)

### HTML looks broken
- Open the generated HTML in a modern browser (Chrome, Firefox, Safari, Edge)
- Check browser console for errors
- Verify the template.html file is intact

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
