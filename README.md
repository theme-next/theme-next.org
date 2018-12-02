# NexT Theme Website

NexT theme website source. You can see the generated files at [gh-pages](https://github.com/theme-next/theme-next.org/tree/gh-pages) branch.

## Usage

### Install Separated Hexo

```bash
$ mkdir theme-next.org
$ cd theme-next.org
$ curl -L https://api.github.com/repos/hexojs/hexo-starter/tarball | tar -zxv -C ./ --strip-components=1
$ npm install
$ hexo -v

hexo: 3.8.0
hexo-cli: 1.1.0
os: Linux 3.10.0-957.el7.x86_64 linux x64
http_parser: 2.7.1
node: 6.14.3
v8: 5.1.281.111
uv: 1.23.2
zlib: 1.2.7
ares: 1.10.1-DEV
icu: 50.1.2
modules: 48
napi: 3
openssl: 1.0.2k-fips
```

For NodeJS <= 4.x:

```bash
$ npm install hexo-util --save
```

Remove unneeded Hexo files:

```bash
$ rm -f _config.yml
$ rm -f .gitmodules
$ rm -rf source
$ rm -rf themes/landscape
```

### Clone Theme NexT

```bash
$ git clone https://github.com/theme-next/hexo-theme-next themes/next
$ git clone https://github.com/theme-next/theme-next-jquery-lazyload themes/next/source/lib/jquery_lazyload
$ npm un hexo-renderer-marked --save
$ npm i hexo-renderer-kramed --save
$ npm install hexo-symbols-count-time --save
```

### Clone NexT Website

```bash
$ git clone -b source --single-branch https://github.com/theme-next/theme-next.org.git next-source
$ ln -s next-source/source source
$ ln -s next-source/_config.yml _config.yml
```

### Run Server

```bash
$ hexo s
```