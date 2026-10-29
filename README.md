# Cofounder application form

A single-page black application form (`index.html`) that sends answers to Formspree and then shows applicants what happens next.

## Hosting (GitHub Pages)

The Formspree endpoint is kept out of the repo. On every push to `main`, `.github/workflows/deploy.yml` writes `config.js` from a repository secret and deploys the site.

One-time setup:

1. **Settings → Secrets and variables → Actions → New repository secret**: name `FORMSPREE_ENDPOINT`, value your Formspree URL.
2. **Settings → Pages → Build and deployment → Source**: choose **GitHub Actions**.
3. **Actions → Deploy to GitHub Pages → Run workflow** (or push to `main`).

## Running locally

```bash
cp config.example.js config.js
```

Put your Formspree URL in `config.js` (it is gitignored), then open `index.html`.
