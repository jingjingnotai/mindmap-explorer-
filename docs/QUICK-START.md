# Quick Start Guide

## View the Demo

1. Open `index.html` in your browser
2. The 2028 AI Crisis example will load
3. Move your mouse to discover nodes
4. Click nodes to expand details

## Creating Your Own Mind Map

The current version has data embedded in the HTML. To customize:

1. Open `index.html` in a text editor
2. Find the `mapData` object (around line 260)
3. Edit the data structure:
   - Change `title`
   - Update `center` node
   - Modify categories and nodes
4. Save and refresh browser

## Data Structure Quick Reference

```javascript
const mapData = {
  center: {
    label: "Main Topic",
    description: "...",
    leaves: [{title: "...", description: "..."}]
  },
  timeline: [...],
  causes: [...],
  consequences: [...],
  solutions: [...]
};
```

## Next: Separate Data Files

We're working on extracting data to separate JSON files for easier reuse.  
Track progress: https://github.com/jingjingnotai/mindmap-explorer/issues

## Need Help?

Open an issue: https://github.com/jingjingnotai/mindmap-explorer/issues/new
