# Pug/Unpug

<i>If It's Stupid And It Works, It's Not Stupid</i> - Anonymous.

Webpack Dev Server (1.x, 2.x) may take a lot of time during `*.pug` files compilations using [pug loader](https://github.com/pugjs/pug-loader), despite it's cache. To avoid this during development "hide" files you're not working on before processing.

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
