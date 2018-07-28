# Pug/Unpug

<i>If it's Stupid And It Works, It's Not Stupid</i> - Anonymous.

Webpack dev server may take a lot of time during `*.pug` files compilations, despite it's cache. To avoid this during development process "hide" other files before processing.

```bash
npm i
```

```bash
npm run unpug # changes all *.pug extensions to *.pxx in ./src
```

```bash
npm run unpug bar.pug # changes all *.pug extensions to *.pxx in ./src except ./src/bar.pug
```

```bash
npm run repug # restore all *.pxx ext to *.pug` in ./src
```

## Config

Default `*.pug` files directory is declared in `dir` variable in `unpug.sh:3`, default: `./src/`.

## Pre-commit

Right before commit `*.pxx` files are automatically changed to `.pug` are readded to current revision thanks to pre-commit indicator (`package.json:17`)
