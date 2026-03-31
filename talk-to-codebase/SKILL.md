---
name: talk-to-codebase
description: Generate a comprehensive markdown codebase guide in under 2 minutes. Use when user wants to understand a repository, onboard to a codebase, or get a system overview.
---

# Talk to Codebase

Generate a professional HTML codebase guide that helps users understand 80% of any codebase in 30 minutes.

## When to Use

- User provides a GitHub/Bitbucket repository URL or local path
- User asks "explain this codebase", "walk me through this repo"
- Onboarding to a new project
- Need to understand architecture before contributing

## What It Produces

An HTML file named `{repo-name}-guide.html` with:

1. **Overview** — What it does, tech stack, key metrics
2. **Architecture** — Layers, components, data flow
3. **Core Flows** — 2-3 critical request/process traces
4. **Key Files** — Most important files to understand
5. **Data Layer** — Storage, models, abstractions
6. **Integration Points** — External services, APIs
7. **Onboarding Path** — Suggested reading order

**Design**: Professional dark mode UI following UI/UX Pro Max principles — accessible (WCAG AA), responsive, keyboard-navigable, with semantic color tokens and optimized performance.

## Workflow

### Step 1: Quick Exploration (30 seconds)

For local repos, quickly gather:

```bash
# Get structure
ls -la
find . -type f -name "README*" -o -name "package.json" -o -name "*.gradle" -o -name "pom.xml" | head -20

# Count files by type
find . -type f | grep -E '\.(java|py|ts|js|go)$' | sed 's/.*\.//' | sort | uniq -c | sort -rn
```

Read in this order (stop after 5 minutes total):
1. README.md or RUNBOOK.md (if exists)
2. Main entry point (main.py, index.ts, Application.java, etc.)
3. Router/controller file (routes, handlers, controllers)
4. 1-2 core business logic files

**Do NOT read more than 5-6 files**. Use file names and structure to infer the rest.

### Step 2: Generate the HTML Guide (60 seconds)

**IMPORTANT**: Generate HTML by string substitution, NOT by complex rendering.

1. Read the template file at `~/.claude/skills/talk-to-codebase/template.html`
2. Replace placeholders with actual data from exploration:

**Required Placeholders**:
- `{{SERVICE_NAME}}` — Repository name
- `{{ISO_DATE}}` — ISO 8601 date (2026-03-31)
- `{{FRIENDLY_DATE}}` — Human-readable date (March 31, 2026)
- `{{DESCRIPTION}}` — 2-3 sentence service description
- `{{LANGUAGE}}` — Primary language + version
- `{{FRAMEWORK}}` — Main framework
- `{{DATABASE}}` — Database type
- `{{LIBRARIES}}` — Top 3-4 libraries
- `{{LOC}}` — Approximate line count
- `{{ENTRY_POINT}}` — Main file path
- `{{SYSTEM_TYPE}}` — Web Service | Worker | Library | CLI Tool | Monorepo
- `{{FLOW_START}}` — Flow start point
- `{{FLOW_LAYER1}}` — First processing layer
- `{{FLOW_LAYER2}}` — Second processing layer
- `{{FLOW_END}}` — Flow end point
- `{{ARCHITECTURE_DETAILS}}` — HTML cards for component layers
- `{{CORE_FLOWS}}` — HTML cards for 2-3 main flows
- `{{KEY_FILES_ROWS}}` — Table rows for key files
- `{{DATA_LAYER}}` — HTML for storage/models
- `{{INTEGRATION_POINTS}}` — HTML for external services
- `{{ONBOARDING_EXTRA}}` — Extra onboarding content

**HTML Generation Guidelines**:
- Use `<div class="card">` for grouped content
- Use `<ul>` for lists
- Use `<code>` for file paths and code
- Use `<pre><code>` for code blocks
- Use `<strong>` for labels
- Keep HTML simple — no complex nesting
- Example card:
  ```html
  <div class="card">
    <h4>API Layer</h4>
    <ul>
      <li><code>routes.py</code> — HTTP endpoint definitions</li>
      <li><code>handlers.py</code> — Request processing logic</li>
    </ul>
  </div>
  ```

### Step 3: Write and Notify (10 seconds)

1. Write the HTML file using the Write tool: `{repo-name}-guide.html`
2. Tell the user: "Created `{name}-guide.html` — open it in your browser to view the interactive guide"
3. **Do NOT** automatically open it

## Important Rules

**Speed over perfection**:
- Spend NO MORE than 5 minutes exploring
- Read only 5-6 key files maximum
- Infer patterns from file names and structure
- Use approximate counts (don't count every file)
- Generate HTML via string substitution ONLY (no complex rendering)

**Focus on signal**:
- Prioritize understanding the core request flow
- Skip test files, configs, build scripts on first pass
- Use actual file paths and function names when you have them
- Use {placeholders} for things you don't know

**HTML generation rules**:
- Read template.html ONCE
- Do simple string replacements (no complex HTML generation)
- Use provided card/table classes from template
- Keep HTML structure flat and simple
- No dynamic JavaScript generation
- Total generation time under 60 seconds

**UI/UX Pro Max compliance**:
- Template follows accessibility guidelines (WCAG AA, 4.5:1 contrast)
- Semantic HTML with proper ARIA labels
- Keyboard navigation support (skip links, focus states)
- Mobile-first responsive design
- Performance optimized (no layout shift, fast fonts)
- Touch targets ≥44px
- Reduced motion support

**Never**:
- Never generate HTML from scratch (use template)
- Never read more than 10 files
- Never spend more than 5 minutes exploring
- Never try to trace every possible flow
- Never create complex nested HTML structures

## Examples

**Good exploration**:
```bash
# Structure overview (10 sec)
ls -la

# Find entry points (10 sec)
find . -name "*Application*.java" -o -name "main.py" -o -name "index.ts"

# Key files (30 sec)
cat README.md
head -50 src/main/Application.java
```

**Bad exploration** (too slow):
```bash
# DON'T do comprehensive searches
find . -name "*.java" -exec wc -l {} \;  # too slow
grep -r "class" . | wc -l  # too slow
```

## Tips

- For monorepos: Ask which service/component to focus on
- For large repos: Stick to the entry point and 1-2 core files
- If stuck: Generate the guide based on README + directory structure alone
- User wants deeper dive: Offer to explain specific files/flows after initial guide

## Success Criteria

- Guide generated in under 2 minutes total
- User understands what the service does
- User knows where to start reading code
- User can trace at least one request end-to-end

---

The goal is **speed + usefulness**, not **completeness + perfection**.
