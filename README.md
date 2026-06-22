# Vow Renewal Planner 💍

**November 15, 2026 · Moultonborough, NH · 13th Anniversary**

A shared, real-time wedding/vow renewal planner — any changes either of you make sync instantly across devices.

---

## Setup (one-time, ~10 minutes)

### Step 1 — Run the Supabase SQL

1. Go to [supabase.com](https://supabase.com) → your project → **SQL Editor**
2. Paste the contents of `supabase_setup.sql` and click **Run**
3. That's it — the table is ready

### Step 2 — Whitelist your GitHub Pages URL in Supabase

1. In Supabase → **Authentication** → **URL Configuration**
2. Under **Site URL**, enter your GitHub Pages URL:
   `https://YOUR-USERNAME.github.io/vow-planner`
3. Under **Redirect URLs**, add the same URL

### Step 3 — Push to GitHub

```bash
# In this folder:
git init
git add .
git commit -m "Initial vow planner"
gh repo create vow-planner --public --push
# or push to an existing repo
```

### Step 4 — Enable GitHub Pages

1. Go to your repo on GitHub → **Settings** → **Pages**
2. Source: **Deploy from a branch**
3. Branch: **main**, folder: **/ (root)**
4. Click **Save** — your site will be live at:
   `https://YOUR-USERNAME.github.io/vow-planner`

---

## How to share with your wife

1. Send her the GitHub Pages URL
2. You each enter your email and get a magic link
3. From then on, any browser on any device — phone, tablet, laptop — stays in sync automatically

> **Note:** Both of you can be logged in at the same time. Changes save within ~1 second of typing and sync on next page load.

---

## Features

- **Overview** — event details, atmosphere notes
- **Budget** — track what's budgeted vs. spent per category
- **Checklist** — phase-by-phase task list with progress tracking
- **Vendors** — contact info and booking status for each vendor
- **Ceremony** — kids' roles, ceremony order, music selections
- **Schedule** — editable day-of timeline
- **Vows** — private space to write and store your vows

---

## Cost

- **GitHub Pages:** Free
- **Supabase:** Free (well within the free tier limits)
- **Total:** $0
