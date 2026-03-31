name: talk-to-codebase
description: Turn any GitHub repository into an interactive HTML codebase guide — understand 80% of any codebase in 30 minutes
---

# Talk to Codebase (Ask Codebase)

This skill transforms you into a Staff-level Tech Lead that helps users rapidly understand any codebase. Given a GitHub repository link, you analyze the repo's structure, architecture, and data flow, then generate a *self-contained interactive HTML file* — a step-by-step visual guide with diagrams, code examples, flow traces, and key insights — that users can open directly in their browser.

The goal is simple: *a user should understand 80% of any repo in 30 minutes.*

## When to Use This Skill

Use this skill when a user:

- Pastes a GitHub or Bitbucket repository link and wants to understand what it does
- Asks "explain this codebase", "walk me through this repo", "talk to this codebase"
- Is onboarding to a new project and needs a fast system-level orientation
- Wants to understand a repo's architecture before contributing or reviewing code
- Needs to evaluate a third-party or open-source project quickly

Examples:
- "Talk to this codebase: https://github.com/org/my-service"
- "Walk me through this repo: https://bitbucket.org/atlassian/some-repo"
- "I'm onboarding to this project — generate a guide"
- "Explain this codebase and make it an HTML file"

## What You Provide

- *repo_url*: A GitHub or Bitbucket repository URL (required)
  - Example: https://github.com/vercel/next.js
  - Example: https://bitbucket.org/atlassian/customer-lifetime-value

## What the Skill Produces

A *self-contained HTML file* named {repo-name}-guide.html saved in the current workspace. It contains 7 interactive sections:

1. *Overview* — Summary banner, end-to-end flow, key files table
2. *Architecture* — 5-layer diagram, package tree, system type classification
3. *Data Layer* — Data flow pipeline, key abstractions, gotcha callouts
4. *Core Logic* — Main processing engine with runnable code examples
5. *Integrations* — External services, experiment tracking, CI/CD
6. *Core Flow Trace* — Step-by-step pipeline trace with file+function table
7. *Key Insights* — State map, decision logic, complexity hotspots, onboarding path

The HTML file includes:
- Sticky nav bar with scroll-aware active highlighting
- Color-coded sections with consistent visual language
- Tip / Warning / Danger callout boxes for gotchas
- Syntax-highlighted code examples
- Architecture diagrams using HTML/CSS boxes and arrows
- No external dependencies — works offline, open directly in any browser

## How It Works

1. *Explore* — Read README, scan directory structure, read key source files
2. *Classify* — Identify system type and define Input → Output data flow
3. *Map* — Identify the 5 architectural layers and all components
4. *Trace* — Pick one core use case and trace it end-to-end
5. *Synthesize* — Extract Tech Lead insights on state, logic, complexity
6. *Generate* — Write a complete self-contained HTML file to the workspace
7. *Open* — Run open {filename}.html to launch in the browser

---

## Detailed Instructions

When this skill is invoked, follow these steps *exactly and in order*.

---

### Step 1 — Explore the Repository

Before writing any HTML, gather information:

1. Read README.md and any /docs folder
2. Scan the top-level directory structure (use files.get or bash ls or expand_folder)
3. Read package.json, pyproject.toml, Cargo.toml, go.mod, or equivalent
4. Read entry point files (e.g., main.py, index.ts, app.js, cmd/main.go)
5. Scan key config files (Dockerfile, .env.example, docker-compose.yml, CI configs)
6. Read 2–3 core source files to understand actual patterns and function signatures

*Do NOT skip this step.* The HTML output quality depends entirely on real exploration.

---

### Step 2 — Generate the HTML File

Create a file named {repo-name}-guide.html in the workspace using create_file.

The HTML must follow this exact structure and style system:

#### HTML Template Structure

html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>{Repo Name} — Codebase Guide</title>
  <style>
    /* PASTE THE FULL CSS STYLE SYSTEM BELOW */
  </style>
</head>
<body>

<header>...</header>
<nav>...</nav>
<main>
  <section id="overview">...</section>
  <section id="skeleton">...</section>
  <section id="data">...</section>
  <section id="training">...</section>   <!-- rename to match repo's core logic -->
  <section id="integrations">...</section>
  <section id="flow">...</section>
  <section id="insights">...</section>
</main>

<script>/* scroll-aware nav highlighting */</script>
</body>
</html>

---

#### REQUIRED CSS STYLE SYSTEM

Always include this exact CSS in the <style> tag — do not invent new styles:

css
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; background: #f0f2f5; color: #1a1a2e; }
header { background: linear-gradient(135deg, #0052cc 0%, #0747a6 100%); color: #fff; padding: 40px 48px; }
header h1 { font-size: 2rem; font-weight: 700; margin-bottom: 8px; }
header p  { font-size: 1rem; opacity: .85; max-width: 700px; line-height: 1.6; }
.badge { display: inline-block; background: rgba(255,255,255,.2); border-radius: 12px; padding: 3px 12px; font-size: .78rem; margin-top: 12px; margin-right: 6px; }
nav { background: #fff; border-bottom: 1px solid #dfe1e6; padding: 0 48px; display: flex; gap: 4px; overflow-x: auto; position: sticky; top: 0; z-index: 100; }
nav a { display: block; padding: 14px 18px; font-size: .85rem; font-weight: 600; color: #5e6c84; text-decoration: none; white-space: nowrap; border-bottom: 3px solid transparent; transition: all .2s; }
nav a:hover, nav a.active { color: #0052cc; border-bottom-color: #0052cc; }
main { max-width: 1100px; margin: 36px auto; padding: 0 24px 80px; }
section { margin-bottom: 56px; scroll-margin-top: 56px; }
.section-header { display: flex; align-items: center; gap: 16px; margin-bottom: 24px; }
.step-badge { width: 44px; height: 44px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: 1rem; flex-shrink: 0; color: #fff; }
.section-header h2 { font-size: 1.45rem; font-weight: 700; }
.section-header p  { font-size: .9rem; color: #5e6c84; margin-top: 3px; }
.card { background: #fff; border-radius: 10px; box-shadow: 0 1px 4px rgba(0,0,0,.08); padding: 24px 28px; margin-bottom: 20px; border-left: 4px solid #dfe1e6; }
.card h3 { font-size: 1rem; font-weight: 700; margin-bottom: 10px; }
.card p, .card li { font-size: .9rem; color: #3d4c5c; line-height: 1.65; }
.card ul { padding-left: 18px; margin-top: 6px; }
.card ul li { margin-bottom: 5px; }
pre { background: #1e2235; color: #cdd6f4; border-radius: 8px; padding: 20px; overflow-x: auto; font-size: .8rem; line-height: 1.75; margin: 14px 0; }
code { font-family: 'JetBrains Mono', 'Fira Code', Consolas, monospace; }
.comment { color: #6c7086; } .keyword { color: #cba6f7; } .string { color: #a6e3a1; } .func { color: #89b4fa; } .number { color: #fab387; } .cls { color: #f9e2af; }
.callout { border-radius: 8px; padding: 14px 18px; margin: 16px 0; font-size: .88rem; line-height: 1.6; display: flex; gap: 12px; }
.callout .icon { font-size: 1.2rem; flex-shrink: 0; margin-top: 1px; }
.callout.tip    { background: #e3fcef; border: 1px solid #abf5d1; color: #006644; }
.callout.warn   { background: #fffae6; border: 1px solid #ffe380; color: #7a5900; }
.callout.info   { background: #e6f0ff; border: 1px solid #b3d0ff; color: #0747a6; }
.callout.danger { background: #ffebe6; border: 1px solid #ff8f73; color: #ae2a19; }
.grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; }
@media (max-width: 720px) { .grid-2 { grid-template-columns: 1fr; } }
.pipeline { display: flex; flex-direction: column; gap: 0; margin: 24px 0; }
.pipe-box { background: #fff; border-radius: 10px; box-shadow: 0 1px 4px rgba(0,0,0,.08); padding: 18px 24px; }
.pipe-box .pipe-title { font-weight: 700; font-size: .95rem; margin-bottom: 4px; }
.pipe-box .pipe-sub   { font-size: .83rem; color: #5e6c84; }
.pipe-box .pipe-file  { font-size: .78rem; font-family: monospace; background: #f4f5f7; border-radius: 4px; padding: 2px 8px; display: inline-block; margin-top: 6px; color: #0052cc; }
.pipe-arrow { text-align: center; font-size: 1.4rem; color: #97a0af; padding: 4px 0; }
.tag { display: inline-block; border-radius: 20px; padding: 2px 10px; font-size: .75rem; font-weight: 600; margin: 2px; }
.tag-purple { background: #f3f0ff; color: #5e4db2; } .tag-green { background: #e3fcef; color: #006644; }
.tag-orange { background: #fff4e0; color: #974f0c; } .tag-red { background: #ffebe6; color: #ae2a19; }
.tag-blue { background: #e6f0ff; color: #0747a6; } .tag-teal { background: #e6fafb; color: #00706b; }
.tag-gray { background: #f4f5f7; color: #5e6c84; }
table { width: 100%; border-collapse: collapse; font-size: .88rem; }
th { background: #f4f5f7; text-align: left; padding: 10px 14px; font-weight: 600; color: #5e6c84; border-bottom: 2px solid #dfe1e6; }
td { padding: 10px 14px; border-bottom: 1px solid #f0f2f5; color: #3d4c5c; vertical-align: top; }
tr:last-child td { border-bottom: none; } tr:hover td { background: #fafbfc; }
td code { background: #f4f5f7; border-radius: 4px; padding: 1px 6px; font-size: .82rem; color: #0052cc; }
.summary-bar { background: linear-gradient(135deg, #1e2235, #2d3561); border-radius: 12px; padding: 28px 32px; color: #cdd6f4; margin-bottom: 28px; }
.summary-bar h2 { color: #fff; font-size: 1.2rem; margin-bottom: 16px; }
.summary-flow { display: flex; flex-wrap: wrap; align-items: center; gap: 6px; }
.sf-step { background: rgba(255,255,255,.1); border-radius: 8px; padding: 8px 14px; font-size: .82rem; font-weight: 600; }
.sf-arrow { color: #89b4fa; font-size: 1rem; }
.arch-box { background: #fff; border-radius: 10px; box-shadow: 0 1px 4px rgba(0,0,0,.08); padding: 16px 20px; text-align: center; }
.arch-box .arch-title { font-weight: 700; font-size: .9rem; margin-bottom: 4px; }
.arch-box .arch-sub   { font-size: .78rem; color: #5e6c84; }
.arch-box .arch-file  { font-size: .75rem; font-family: monospace; background: #f4f5f7; border-radius: 4px; padding: 2px 8px; display: inline-block; margin-top: 6px; color: #0052cc; }
.arch-row { display: flex; gap: 12px; align-items: stretch; margin: 6px 0; }
.arch-row .arch-box { flex: 1; }
.arch-arrow-down { text-align: center; font-size: 1.6rem; color: #97a0af; line-height: 1; margin: 2px 0; }
.tree { font-family: 'JetBrains Mono', Consolas, monospace; font-size: .82rem; background: #1e2235; color: #cdd6f4; border-radius: 8px; padding: 20px 24px; line-height: 1.9; }
.tree .t-dir { color: #89b4fa; } .tree .t-file { color: #cdd6f4; }
.tree .t-desc { color: #6c7086; } .tree .t-hl { color: #a6e3a1; }

---

#### REQUIRED JAVASCRIPT (always include at end of body)

html
<script>
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('nav a');
  window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach(s => { if (window.scrollY >= s.offsetTop - 80) current = s.id; });
    navLinks.forEach(a => { a.classList.toggle('active', a.getAttribute('href') === '#' + current); });
  });
</script>

---

### Step 3 — Section-by-Section Content Rules

For each section, fill in real values from the repo. Never use placeholder text like "[file path]" in the final output.

#### Header
html
<header>
  <h1>:brain: {repo-name} — Codebase Guide</h1>
  <p>A step-by-step Tech Lead walkthrough. Understand 80% of this repo in 30 minutes.</p>
  <div>
    <span class="badge">:file_folder: {org/repo}</span>
    <span class="badge">:abc: {language}</span>
    <span class="badge">:zap: {key frameworks}</span>
  </div>
</header>

#### Nav (adapt labels to match the repo's sections)
html
<nav>
  <a href="#overview" class="active">Overview</a>
  <a href="#skeleton">1. Architecture</a>
  <a href="#data">2. Data Layer</a>
  <a href="#core">3. Core Logic</a>
  <a href="#integrations">4. Integrations</a>
  <a href="#flow">5. Core Flow</a>
  <a href="#insights">6. Insights</a>
</nav>

#### Section: Overview
Must include:
- summary-bar dark banner with end-to-end flow using sf-step + sf-arrow
- grid-2 with two cards: "What problem does it solve?" and "Key Files at a Glance" (table)
- A callout info box with the most important thing to know about this repo

#### Section: Architecture (id="skeleton")
Must include:
- 5-layer visual diagram using arch-row, arch-box, arch-arrow-down
- Package tree using <div class="tree"> with t-dir, t-hl, t-desc spans
- System type classification table in a grid-2 card

#### Section: Data Layer (id="data")
Must include:
- pipeline flow boxes showing data transformation steps
- grid-2 cards explaining key abstractions with code examples in <pre><code>
- At least one callout warn for gotchas

#### Section: Core Logic (id="core" or rename to match the repo)
Must include:
- Code example showing how to use the library/call the API/run the pipeline
- Explanation of the main algorithm registry or routing pattern
- How distributed/async/parallel processing works (if applicable)

#### Section: Integrations (id="integrations")
Must include:
- External services and how they're used
- CI/CD pipeline flow using summary-flow + sf-step

#### Section: Core Flow Trace (id="flow")

This is the most valuable section. Each pipeline step MUST be a *flip card* — front shows explanation, back shows real source code.

*Required: Add flip card CSS + JS before the section:*

html
<style>
  .flip-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-top: 20px; }
  @media (max-width: 800px) { .flip-grid { grid-template-columns: 1fr; } }
  .flip-card { perspective: 1200px; height: 340px; cursor: pointer; }
  .flip-card-inner { position: relative; width: 100%; height: 100%; transition: transform 0.65s cubic-bezier(.4,0,.2,1); transform-style: preserve-3d; }
  .flip-card.flipped .flip-card-inner { transform: rotateY(180deg); }
  .flip-face { position: absolute; width: 100%; height: 100%; backface-visibility: hidden; -webkit-backface-visibility: hidden; border-radius: 12px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,.12); }
  .flip-front { background: #fff; display: flex; flex-direction: column; }
  .flip-back  { background: #1e2235; transform: rotateY(180deg); display: flex; flex-direction: column; }
  .flip-front-header { padding: 16px 20px 12px; border-bottom: 1px solid #f0f2f5; }
  .flip-front-header .step-num { font-size: .7rem; font-weight: 700; color: #fff; border-radius: 20px; padding: 2px 10px; display: inline-block; margin-bottom: 6px; }
  .flip-front-header .step-title { font-size: 1rem; font-weight: 700; color: #1a1a2e; }
  .flip-front-header .step-file  { font-size: .74rem; font-family: monospace; color: #0052cc; margin-top: 4px; }
  .flip-front-body { padding: 14px 20px; flex: 1; overflow-y: auto; }
  .flip-front-body p { font-size: .85rem; color: #3d4c5c; line-height: 1.6; margin-bottom: 8px; }
  .flip-front-body .what { font-weight: 700; color: #0052cc; font-size: .78rem; text-transform: uppercase; letter-spacing: .05em; margin-bottom: 4px; }
  .flip-front-body ul { padding-left: 16px; }
  .flip-front-body li { font-size: .83rem; color: #3d4c5c; line-height: 1.55; margin-bottom: 4px; }
  .flip-hint { padding: 10px 20px; font-size: .73rem; color: #97a0af; text-align: right; border-top: 1px solid #f0f2f5; }
  .flip-back-header { padding: 12px 18px 8px; border-bottom: 1px solid rgba(255,255,255,.1); }
  .flip-back-header .back-title { font-size: .82rem; font-weight: 700; color: #89b4fa; }
  .flip-back-header .back-file  { font-size: .72rem; color: #6c7086; font-family: monospace; margin-top: 2px; }
  .flip-back pre { margin: 0; flex: 1; overflow-y: auto; padding: 14px 18px; font-size: .74rem; line-height: 1.65; background: transparent; border-radius: 0; height: 260px; }
  .flip-back-hint { padding: 8px 18px; font-size: .72rem; color: #6c7086; text-align: right; border-top: 1px solid rgba(255,255,255,.08); }
  .flow-connector { text-align: center; font-size: 1.6rem; color: #97a0af; margin: 4px 0; grid-column: 1 / -1; }
</style>

*Required: Two callout boxes at the top of the section:*
html
<div class="callout info">...</div>  <!-- describing the use case -->
<div class="callout tip">:black_joker: Each card shows explanation on front. Click to flip and see actual source code on back.</div>

*Required: Flip card HTML structure for EACH step:*

html
<div class="flip-grid">

  <div class="flip-card" onclick="this.classList.toggle('flipped')">
    <div class="flip-card-inner">

      <!-- FRONT: Explanation -->
      <div class="flip-face flip-front" style="border-top: 4px solid {step-color}">
        <div class="flip-front-header">
          <span class="step-num" style="background:{step-color}">STEP N</span>
          <div class="step-title">{filename}.py</div>
          <div class="step-file">{path/to/filename.py}</div>
        </div>
        <div class="flip-front-body">
          <div class="what">What it does</div>
          <p>{1-2 sentence explanation of the step's role in the pipeline}</p>
          <div class="what">Key actions</div>
          <ul>
            <li>{specific thing this code does — reference actual functions/variables}</li>
            <li>{specific thing this code does}</li>
            <li>{specific thing this code does}</li>
          </ul>
          <div class="what">Why it matters</div>
          <p>{why this step exists — what breaks without it}</p>
        </div>
        <div class="flip-hint">Click to see source code →</div>
      </div>

      <!-- BACK: Actual source code -->
      <div class="flip-face flip-back">
        <div class="flip-back-header">
          <div class="back-title">:page_facing_up: Source Code</div>
          <div class="back-file">{full/path/to/file.py}</div>
        </div>
        <pre><code>{key excerpt of actual source code with syntax highlighting spans}</code></pre>
        <div class="flip-back-hint">Click to flip back ←</div>
      </div>

    </div>
  </div>

  <!-- Use flow-connector between pairs of cards -->
  <div class="flow-connector">↓ ↓</div>

  <!-- Repeat for each step... -->

  <!-- Final output card spanning full width -->
  <div style="grid-column: 1 / -1">
    <div class="card" style="border-left-color:#0052cc; background: linear-gradient(135deg,#e6f0ff,#fff)">
      <h3>:white_check_mark: Final Output</h3>
      <p>{description of what the pipeline produces}</p>
    </div>
  </div>

</div>

*Rules for flip cards:*
- *Front*: Explanation written for someone who has NEVER seen this code. Include: what it does, key actions (using actual function/variable names from the code), why it matters
- *Back*: A key excerpt (not necessarily all) of the actual source code, syntax-highlighted with <span class="keyword/func/string/comment/number"> spans
- *Fetch real source code* for each step before writing the HTML — do NOT make up code
- Each step-color should match the section color palette (spine=green, inference=red, business logic=orange, etc.)
- Cards are arranged in a 2-column grid; use <div class="flow-connector">↓ ↓</div> between rows to show sequence
- The final output is a full-width card below all flip cards

#### Section: Key Insights (id="insights")
Must include:
- grid-2: "Where State Lives" + "Where Core Decision Logic Lives"
- grid-2: "Complexity Hotspots" + "Notable Design Choices"
- Onboarding path table (Order / File / Why)
- Footer summary-bar with "You now understand 80% of this repo"

---

### Step 4 — After Creating the File

1. Confirm the file was created: {repo-name}-guide.html
2. Run open {repo-name}-guide.html using bash to launch it in the browser
3. Tell the user the file is ready and what sections are included
4. Offer follow-up deep-dive options:
   - "Trace a specific request/flow"
   - "Explain the data model in detail"
   - "Show me the most complex module"
   - "How would I add [feature]?"

---

### Step 5 — Rules to Follow

*Always:*
- Think in systems, not lines of code
- Use actual file names, function names, and values from the repo
- Adapt section labels to match the repo domain (e.g. "Training Engine" for ML repos, "API Layer" for web services)
- Include at least 2 code examples with syntax highlighting (<span class="keyword/func/string/comment/number">)
- Color-code cards with border-left matching section theme colors

*Never:*
- Dump raw code blocks without context
- Leave placeholder text like [file path] or [description] in the final HTML
- Skip the Core Flow Trace section — it's the most valuable part
- Use external CDNs or <link> tags — the file must be self-contained

*Section color palette (use border-left on cards):*
- Overview: #0052cc
- Architecture: #6554c0
- Data: #00875a
- Core Logic / Training: #de350b
- Integrations / MLflow: #ff8b00
- Flow Trace: #00b8d9
- Insights: #97a0af

---

## Technical Details

### Tools Used

- *mcp__bitbucket__invoke_tool* — Bitbucket repo metadata, branch info, file content (files.get, commit.get)
- *mcp__remote_bitbucket_search__invoke_tool* — Code search in Bitbucket repos
- *mcp__rovodev__invoke_tool* — get_pr_diff, recent PRs, similar issues
- *bash* — Explore locally cloned repos, open the generated HTML file
- *open_files, expand_code_chunks, grep* — Workspace file exploration
- *GitHub raw URLs* — https://raw.githubusercontent.com/{owner}/{repo}/HEAD/{file}
- *create_file* — Write the final HTML to the workspace
- *bash: open {filename}.html* — Launch the file in the browser after creation

### Handling Different Repo Types

| Scenario | Approach |
|---|---|
| Public GitHub URL | Fetch README and key files via raw.githubusercontent.com |
| Bitbucket repo | Use mcp__bitbucket__invoke_tool with files.get action |
| Local workspace repo | Use open_files, expand_code_chunks, grep, bash |
| Private / inaccessible repo | Ask user to paste directory tree and 2–3 key files |

### Error Handling

- *If README is missing*: Infer from file names, dependencies, test files
- *If repo is inaccessible*: Ask user to paste directory tree and key files
- *If system type is ambiguous*: Classify as primary type, note hybrid nature in Insights
- *If a layer doesn't exist*: Skip it, note the absence in Key Insights

## Tips & Troubleshooting

*Problem*: HTML file is too large to create in one call 
*Solution*: Use create_file for the initial structure + CSS, then find_and_replace_code to add each section incrementally

*Problem*: Repo has no README 
*Solution*: Prioritize package.json/dependency files, entry points, and test files

*Problem*: Monorepo with multiple services 
*Solution*: Identify top-level structure first, pick the most important sub-service for the Core Flow Trace, note the monorepo pattern in Insights

*Problem*: User wants to go deeper after viewing the HTML 
*Solution*: Offer: "Trace a specific request", "Explain the data model", "Show me the most complex module", "How would I add [feature]?", "What are the test coverage gaps?"