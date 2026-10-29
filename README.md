# Cofounder application form

A single-page black application form (`index.html`) that sends answers to Formspree and then shows applicants what happens next.

## Hosting (Vercel)

The Formspree endpoint is kept out of the repo. On every deploy, `build.sh` writes `config.js` from an environment variable (configured in `vercel.json`).

One-time setup: in the Vercel project, go to **Settings → Environment Variables** and add `FORMSPREE_ENDPOINT` with your Formspree URL (for Production, Preview and Development), then redeploy.

## Running locally

```bash
cp config.example.js config.js
```

Put your Formspree URL in `config.js` (it is gitignored), then open `index.html`.
