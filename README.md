# AREEBA OFFICIAL – Women's Clothing Website (Vercel + Supabase)

Files: `logo.svg` / `logo-full.svg` (your logo) · `index.html` (website) · `admin.html` (dashboard) · `config.js` (your keys) · `supabase-setup.sql` (database)

## 1. Supabase (free) – database + photo storage
1. Go to supabase.com → New project.
2. SQL Editor → paste everything from `supabase-setup.sql` → Run.
3. Authentication → Users → Add user → your email + password (this is your dashboard login).
4. Authentication → Sign In / Providers → turn OFF "Allow new users to sign up".
5. Project Settings → API → copy **Project URL** and **anon public key** into `config.js`.

## 2. GitHub
Create a new repository and upload all files in this folder (drag & drop works).

## 3. Vercel
Add New → Project → import the GitHub repo → Framework: Other → Deploy. No build settings needed.
Settings → Domains → add your domain.

## 4. Use it
Open `yourdomain.com/admin.html` → log in → upload logo, product photos, change prices → Save & Publish.

Also change your WhatsApp number there (or in `index.html`, variable `WA`).
Moving to Shopify later: your products are one list (name, description, price, image URL) – easy to export to Shopify CSV.
