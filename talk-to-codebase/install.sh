#!/bin/bash

# Talk to Codebase Skill Installer
# https://github.com/jingjingnotai/mindmap-explorer-/tree/main/talk-to-codebase

set -e

echo "📦 Installing talk-to-codebase skill..."

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Skill directory
SKILL_DIR="$HOME/.claude/skills/talk-to-codebase"
REPO_URL="https://raw.githubusercontent.com/jingjingnotai/mindmap-explorer-/main/talk-to-codebase"

# Check if Claude skills directory exists
if [ ! -d "$HOME/.claude/skills" ]; then
    echo -e "${YELLOW}⚠️  Creating Claude skills directory...${NC}"
    mkdir -p "$HOME/.claude/skills"
fi

# Create skill directory
echo -e "${BLUE}📁 Creating skill directory...${NC}"
mkdir -p "$SKILL_DIR"

# Download SKILL.md
echo -e "${BLUE}⬇️  Downloading SKILL.md...${NC}"
if curl -fsSL "${REPO_URL}/SKILL.md" -o "${SKILL_DIR}/SKILL.md"; then
    echo -e "${GREEN}✅ Downloaded SKILL.md${NC}"
else
    echo -e "${RED}❌ Failed to download SKILL.md${NC}"
    exit 1
fi

# Download template.html
echo -e "${BLUE}⬇️  Downloading template.html...${NC}"
if curl -fsSL "${REPO_URL}/template.html" -o "${SKILL_DIR}/template.html"; then
    echo -e "${GREEN}✅ Downloaded template.html${NC}"
else
    echo -e "${RED}❌ Failed to download template.html${NC}"
    exit 1
fi

# Verify installation
echo ""
echo -e "${BLUE}🔍 Verifying installation...${NC}"
if [ -f "${SKILL_DIR}/SKILL.md" ] && [ -f "${SKILL_DIR}/template.html" ]; then
    echo -e "${GREEN}✅ Skill installed successfully!${NC}"
    echo ""
    echo -e "${GREEN}📂 Installed to:${NC} ${SKILL_DIR}"
    echo ""
    echo -e "${YELLOW}📖 Usage:${NC}"
    echo "   cd /path/to/your/repo"
    echo "   /talk-to-codebase ."
    echo ""
    echo -e "${YELLOW}📝 The skill will generate:${NC}"
    echo "   {repo-name}-guide.html"
    echo ""
    echo -e "${BLUE}💡 Tip:${NC} Restart Claude Code or start a new conversation to use the skill"
else
    echo -e "${RED}❌ Installation failed. Some files are missing.${NC}"
    exit 1
fi
