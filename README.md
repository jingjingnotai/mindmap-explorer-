# Interactive Mind Map Explorer

Transform long-form articles into explorable, interactive mind maps with a flashlight discovery mechanic.

![Demo](docs/demo.gif)

## ✨ Features

- **🔦 Flashlight Discovery** - Move cursor to reveal nodes in darkness
- **🎯 Click-to-Expand** - Tap nodes to reveal detailed leaves
- **🎮 Smooth Navigation** - Trackpad gestures, edge panning, arrow keys
- **💡 Persistent Brightness** - Explored areas stay lit
- **🌟 100% Enlightenment** - UI brightens when fully discovered
- **📝 Rich Tooltips** - Hover for detailed context
- **💾 Export** - Download as PNG

## 🚀 Quick Start

### Try the Demo

1. Open `mindmap-explorer.html` in your browser
2. Move your mouse to discover nodes
3. Click nodes to expand details
4. Explore!

### Use with Your Own Article

```bash
# 1. Create your data file following the schema
cp examples/2028-crisis.json my-article.json

# 2. Edit my-article.json with your content
# 3. Open mindmap-explorer.html
# 4. Upload your JSON when prompted
```

## 📊 Example Articles

- **[2028 AI Crisis](examples/2028-crisis.json)** - Economic crisis analysis
- More examples coming soon!

## 🎨 Creating Your Own

### Data Structure

Your JSON file should follow this structure:

```json
{
  "title": "Your Article Title",
  "center": {
    "label": "Main Topic",
    "description": "Core problem or theme (2-3 sentences)",
    "leaves": [
      {
        "title": "Key Point 1",
        "description": "Detailed explanation (2-3 sentences)"
      }
    ]
  },
  "categories": [
    {
      "type": "causes",
      "label": "Root Causes",
      "color": "#8b4513",
      "nodes": [...]
    }
  ]
}
```

See [mindmap-data-schema.json](mindmap-data-schema.json) for complete schema.

### Layout Guide

**Positioning nodes** (relative to center at 0, 0):

```
         Timeline
         (0, -680)
            |
    Causes  |  Solutions  
   (-380,-150) (600,-250)
       \    |    /
        \   |   /
         CENTER
         (0, 0)
        /   |   \
       /    |    \
  Consequences
  (-350, 250)
```

**Spacing recommendations:**
- Main nodes: 300-400px from center
- Vertical: 180-200px between nodes
- Horizontal: 100-150px between parallels

**Color palette:**
- Timeline: `#b8860b` (golden brown)
- Causes: `#8b4513` (saddle brown)  
- Consequences: `#cd5c5c` (indian red)
- Solutions: `#228b22` (forest green)
- Center: `#2f4f4f` (dark slate gray)

## 🎯 Use Cases

- 📚 Research papers - Visualize complex arguments
- 📜 Policy documents - Map causes → effects → solutions
- 💻 Technical articles - System architecture
- 📅 Historical events - Timeline with context
- 📈 Strategic plans - Goals, challenges, approaches

## 🌐 Browser Support

- Chrome/Edge: ✅ Full support
- Firefox: ✅ Full support  
- Safari: ✅ Full support (macOS trackpad gestures work perfectly)

## 🤝 Contributing

1. Fork the repo
2. Create data for your use case
3. Add to `examples/`
4. Submit PR

## 📄 License

MIT

## 💬 Feedback

Open an issue to share:
- New example articles
- Feature requests
- Bug reports
- Design improvements

---

Created with [Claude Code](https://anthropic.com/claude-code)
