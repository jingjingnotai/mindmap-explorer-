# Publishing to GitHub

## Step 1: Create GitHub Repository

1. Go to https://github.com/jingjingnotai
2. Click "New repository"
3. Name: `mindmap-explorer`
4. Description: "Interactive mind map visualization with flashlight discovery"
5. Public
6. **Don't** initialize with README (we have one)
7. Click "Create repository"

## Step 2: Push Code

```bash
cd /tmp/mindmap-explorer-repo

# Initialize git
git init
git add .
git commit -m "Initial commit: Interactive mind map explorer"

# Connect to GitHub
git remote add origin https://github.com/jingjingnotai/mindmap-explorer.git

# Push
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to repository Settings
2. Click "Pages" in left sidebar  
3. Source: Deploy from branch
4. Branch: `main` / `root`
5. Click "Save"

Wait 2-3 minutes, then visit:
**https://jingjingnotai.github.io/mindmap-explorer/**

## Step 4: Update README Demo Link

Once GitHub Pages is live:

```bash
# Edit README.md, replace demo.gif line with:
![Demo](https://jingjingnotai.github.io/mindmap-explorer/)

git add README.md
git commit -m "Add live demo link"
git push
```

## Step 5: Share!

Tweet/share:
```
🔦 Just built an interactive mind map explorer!

Transform long articles into explorable visualizations with:
- Flashlight discovery mechanic
- Click-to-expand details  
- Smooth trackpad navigation
- 100% enlightenment mode

Try it: https://jingjingnotai.github.io/mindmap-explorer/

#dataviz #interactive #webdev
```

## Troubleshooting

**"Permission denied (publickey)"**
```bash
# Use HTTPS instead
git remote set-url origin https://github.com/jingjingnotai/mindmap-explorer.git
```

**GitHub Pages not working**
- Wait 5-10 minutes
- Check Settings → Pages shows green checkmark
- Try hard refresh (Cmd+Shift+R)

**Want to update later**
```bash
cd /tmp/mindmap-explorer-repo
# Make changes...
git add .
git commit -m "Update: description of changes"
git push
```
