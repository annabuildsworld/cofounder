# Cofounder application form

A single-page black application form (`index.html`) that sends answers to Formspree and then shows applicants what happens next.

## Setup

The Formspree endpoint lives in `config.js`, which is gitignored so it isn't stored in this repo.

```bash
cp config.example.js config.js
```

Then put your Formspree URL in `config.js`. When you deploy, upload `config.js` next to `index.html`.
