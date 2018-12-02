---
title: Getting Started
date: 2018-01-30 13:40:21
description: NexT User Docs – Starting to Use
#tags: [Testing, Another Tag]
#categories: English
#lang: en
---
<p>{% exturl Hexo https://hexo.io %} is a fast and powerful static blog generating framework, it's based on {% exturl Node.js https://nodejs.org %}. By using Hexo you can write articles easily with Markdown, and besides the grammer of Markdown, you can also use {% exturl tag plugins https://hexo.io/docs/tag-plugins.html %} provided by Hexo to insert special formated content simply. In this page we assume you have installed Hexo and created a site with it.</p>

{% note info %}
You can visit {% exturl Hexo Docs https://hexo.io/docs/index.html %} to see how to install Hexo.
{% endnote %}

### Documentation Variables

{% tabs common-variables %}
<!-- tab _config.yml -->
There are two main configuration files using by Hexo and both called `_config.yml`:

  1. The first one is under {% label info@site root directory %}, which contains Hexo's config.
  2. The second one is under {% label primary@theme root directory %}, which is provided by NexT and contains theme's config.

Let's call the first one – {% label info@site config file %}, and the second one – {% label primary@theme config file %}.
<!-- endtab -->

<!-- tab <code>Available Settings</code> -->
All `available settings` will be inside code blocks (with single backtick or `<code>` tags).
<!-- endtab -->

<!-- tab <strong><code>Default Settings</code></strong> -->
And all **`default settings`** will be bold inside code blocks (with single backtick or `<code>` and `**` or `<strong>` tags).
<!-- endtab -->
{% endtabs %}

{% tabs colored-variables %}
<!-- tab {% label success@Recommended Settings %} -->
All {% label success@recommended settings %} will be highlighted under the success label.
<!-- endtab -->

<!-- tab {% label warning@Deprecated Settings %} -->
All {% label warning@deprecated settings %} will be highlighted under the warning label.
<!-- endtab -->

<!-- tab {% label danger@Possible Errors %} -->
And all {% label danger@possible errors %} will be highlighted under the danger label.
<!-- endtab -->
{% endtabs %}

### NexT Installation

It's easy to install Hexo theme: you can just download the NexT theme, copy the theme folder to the `themes` directory under {% label info@site root directory %} and specify in {% label info@site config file %} your {% label primary@theme root directory %}. The detailed steps are as follows:

#### Downloading NexT

{% tabs downloading-next %}
<!-- tab Newest Version -->
If you know about {% exturl Git http://git-scm.com %}, you can clone the whole repository and update it in any time with `git pull` command instead of downloading archive manually.

Open your Terminal, change to Hexo {% label info@site root directory %} and clone latest master branch of NexT theme:
{% code lang:bash %}
$ cd hexo
$ git clone https://github.com/theme-next/hexo-theme-next themes/next
{% endcode %}
<!-- endtab -->

<!-- tab Stable Version -->
1. Go to NexT version {% exturl Release Page https://github.com/theme-next/hexo-theme-next/releases %}.
2. Choose the version you need and download the Source Code (zip) in the Download section. For example v6.0.0.
3. Extract the zip file to site's themes directory and rename the extracted folder (`hexo-theme-next-6.0.0`) to `next`.
<!-- endtab -->
{% endtabs %}

{% note primary %}
You also can read [detailed installation instructions](/docs/getting-started/installation/) if you want any other installation variant.
{% endnote %}

{% note warning %}
If you still use NexT version 5, you can read [instructions for update from v5 to v6](/docs/getting-started/update-from-v5/).
{% endnote %}

#### Enabling NexT

Like all Hexo themes, after you download it, open {% label info@site config file %}, find `theme` section, and change its value to `next` (or another theme directory name).

```yml hexo/_config.yml
theme: next
```

Now you have installed NexT theme, next we will verify whether it is enabled correctly. Between changing the theme and verifying it, we'd better use `hexo clean` to clean Hexo's cache.

#### Checking NexT

First start Hexo local server, and enable debug parameter (by adding `--debug`), the whole command is `hexo s --debug`. You can see the output while running, and if you find problem, you can use the output to help others locate error better. When it prints:

    INFO  Hexo is running at http://0.0.0.0:4000/. Press Ctrl+C to stop.

Now you can open `http://localhost:4000` in your browser, and check whether the site works correctly.

{% note success %}
If you find your site looks like this picture, you have installed it correctly. That’s default NexT scheme – Muse.
![Default Scheme – Muse](/images/docs/next-default-scheme-linux.png)
{% endnote %}

Now you've installed and enabled NexT. In next steps we will change some settings including personalization and third-party services integration.

#### Adding Plugins

There are 2 variants to hook up NexT plugins:

* Local installation (plugins scripts will loaded from your site).
* CDN links (plugins scripts will loaded from remote hosts).

{% note info %}
If your site hosted on VPN (or any other) server with NGINX configuration, recommended to use local installation.
And if your files deployed to any free hosting service (Github, Gitlab, etc.), recommended to use CDN links.
{% endnote %}

{% tabs adding-plugins %}
<!-- tab Local -->
In NexT config now you can find dependencies on each module which was moved to external repositories which can be found by {% exturl main organization link https://github.com/theme-next %}. For example, you want to use `fancybox` in your site. Go to {% label primary@theme config file %} and see:

{% code lang:yml next/_config.yml %}
# Dependencies: https://github.com/theme-next/theme-next-fancybox
fancybox: false
{% endcode %}

Then turn on `fancybox` and go to «Dependencies» link with installation instructions of this module.
<!-- endtab -->

<!-- tab CDN -->
If you use cdn for any plugins, you need to replace your cdn link. For example, you want to use `fancybox` and you configured a cdn link. Go to {% label primary@theme config file %} and see:

{% code lang:yml next/_config.yml %}
vendors:
  # ...
  # Some contents...
  # ...
  fancybox: //cdn.jsdelivr.net/npm/fancybox@3.0.0/dist/js/jquery.fancybox.pack.js # Set or update fancybox cdn url.
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@3.0.0/dist/css/jquery.fancybox.min.css # Set or update fancybox cdn url.
{% endcode %}

And jsDelivr CDN is recommended to deliver our third-party plugins because it is fast in everywhere and has the valid ICP license issued by the Chinese government. It does not only crawl the js files from npm packages, and it crawls from the GitHub Releases! We could use the following link to reference the js files, just as other CDNs.

{% code %}
//cdn.jsdelivr.net/gh/user/repo@version/file
{% endcode %}

And it could automatically minify the JS and CSS files, even if you don't have the minified version. Just use the `filename.min.js` or the `filename.min.css` to replace the file above.

And we also provide other optional CDNs, including the famous {% exturl CDNJS https://cdnjs.com/ %} and the {% exturl Bootcss http://www.bootcdn.cn/ %} which has the quite high access speed in China.

<!-- endtab -->
{% endtabs %}

### NexT Configuration

#### Choosing Scheme

Scheme is a feature supported by NexT, by using Scheme NexT gives you different views. And nearly all config can be used by those Schemes. Till now NexT supports 4 schemes, and they are:

* **`Muse`** → Default Scheme, this is the initial version of NexT. Uses black-white tone and mainly looks cleanly.
* `Mist` → A tighter version of Muse with a tidy single-column view.
* `Pisces` → Double-column Scheme, fresh like your neighbor's daughter.
* `Gemini` → Looks like Pisces, but have distinct column blocks with shadow to appear more sensitive to view.

You can change Scheme by editing {% label primary@theme config file %}, searching scheme keyword. You'll see 4 lines of scheme settings and can enable one of them by removing it's `#` and added `#` to previous.

```yml next/_config.yml
#scheme: Muse
#scheme: Mist
#scheme: Pisces
scheme: Gemini
```

#### Choosing Language

Edit {% label info@site config file %}, set the value of `language` to the language you need. For example, English looks like this:

```yml hexo/config.yml
language: en
```

Now NexT supports following languages:

|      Language      |        Code        |      Example      |
| ------------------ | ------------------ | ----------------- |
| English            | `en`               | `language: en`    |
| 简体中文            | `zh-CN`            | `language: zh-CN` |
| 繁體中文            | `zh-TW` or `zh-HK` | `language: zh-TW` |
| Русский            | `ru`               | `language: ru`    |
| Français           | `fr`               | `language: fr`    |
| German             | `de`               | `language: de`    |
| 日本語              | `ja`               | `language: ja`    |
| Indonesian         | `id`               | `language: id`    |
| Português (Brasil) | `pt` or `pt-BR`    | `language: pt`    |
| 한국어              | `ko`               | `language: ko`    |
| Niederländisch     | `nl`               | `language: nl`    |
| Tiếng Việt         | `vi`               | `language: vi`    |
| Italiano           | `it`               | `language: it`    |
| Türk               | `tr`               | `language: tr`    |

{% note primary %}
If you want to add or improve language for NexT theme, you can do it easily with {% exturl crowdin https://crwd.in/theme-next %} service.
{% endnote %}

#### Configuring Menu Items

Menu settings items have format `Key: /link/ || icon` which contains 3 values:

{% tabs menu-items %}
<!-- tab <code>Key</code> -->
`Key` → is the name of menu item (`home`, `archives`, etc.).
If translate for this menu will be found in languages, this translate will be loaded; if not, `Key` name will be used.
{% note danger %}
`Key` value is case sensitive (e.g. `home` is not same as `Home`).
{% endnote %}
<!-- endtab -->

<!-- tab <code>link</code> -->
Value before `||` delimeter (`/link/`) → is the target link to relative url inside your site.
<!-- endtab -->

<!-- tab <code>icon</code> -->
Value after `||` delimeter (`icon`) → is the name of FontAwesome icon.
If icon (with or without delimeter) is not specified, question icon will be loaded.
Names of that icons can be found in {% exturl Font Awesome https://fontawesome.com %} site.
<!-- endtab -->
{% endtabs %}

By default NexT provides `home` and `archives` items. To customize menu items, edit the following content in {% label primary@theme config file %}:

{% note warning %}
All custom pages which commented by default under `menu` section need to create manually. See [«Custom Page Support»](/docs/theme-settings/#Custom-Page-Support)
{% endnote %}

```yml next/_config.yml
menu:
  home: / || home
  #about: /about/ || user
  #tags: /tags/ || tags
  #categories: /categories/ || th
  archives: /archives/ || archive
  #schedule: /schedule/ || calendar
  #sitemap: /sitemap.xml || sitemap
  #commonweal: /404/ || heartbeat
```

Dynamic sub-menu within hierarchy structure is also supported. Add your sub-menu items in `menu` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
menu:
  home: / || home
  archives: /archives/ || archive
  Docs:
    default: /docs/ || book
    Third Party Services:
      default: /third-party-services/ || plug
      Algolia Search: /algolia-search/ || adn
```

{% note info %}
If your site runs in a sub-directory, please remove the prefix `/` from the link.
{% endnote %}

By default NexT shows the icons of menu items without badges.

{% tabs menu_settings %}
<!-- tab <code>icons</code> -->
You can configure it by editing values in `menu_settings.icons` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
menu_settings:
  icons: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>badges</code> -->
Set the value `badges` to `true` to display the count of Posts / Categories / Tags within menu items in `menu_settings` section in {% label primary@theme config file %} as following:

{% code lang:yml next/_config.yml %}
menu_settings:
  badges: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Configuring Favicon

By default the Hexo site use NexT favicons in `hexo-site/themes/next/source/images/` directory with different size for different device.

We recommend that you put custom favicons into `hexo-site/source/` directory. To get or check favicons, you can visit {% exturl Favicon Generator https://realfavicongenerator.net %}. In this way, you **must remove** `/images` prefix from pathes, and **rename & redefine** the name or format of favicons in `favicon` section in {% label primary@theme config file %}, otherwise Next will rewrite your custom icons in Hexo.

{% tabs favicon %}

<!-- tab <code>small</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  small: /images/favicon-16x16-next.png
{% endcode %}
<!-- endtab -->

<!-- tab <code>medium</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  medium: /images/favicon-32x32-next.png
{% endcode %}
<!-- endtab -->

<!-- tab <code>apple_touch_icon</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  apple_touch_icon: /images/apple-touch-icon-next.png
{% endcode %}
<!-- endtab -->

<!-- tab <code>safari_pinned_tab</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  safari_pinned_tab: /images/logo.svg
{% endcode %}
<!-- endtab -->

<!-- tab <code>android_manifest</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  android_manifest: /images/manifest.json
{% endcode %}
<!-- endtab -->

<!-- tab <code>ms_browserconfig</code> -->
{% code lang:yml hexo/_config.yml %}
favicon:
  ms_browserconfig: /images/browserconfig.xml
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Configuring Avatar

By default NexT doesn't show avatar in sidebar. You can configure it by editing values under `avatar` setting in {% label primary@theme config file %}.

{% tabs avatar %}
<!-- tab <code>url</code> -->
For first test you can uncomment `/images/avatar.gif` value near the `avatar.url` setting to see default avatar:

{% code lang:yml next/_config.yml %}
avatar:
  url: /images/avatar.gif
{% endcode %}

Then you need to specify your own avatar. It can be done one of the ways below:

{% subtabs avatar1 %}
<!-- tab {% label success@Hexo directory %} -->
Put your avatar under {% label info@site directory %} `source/uploads/` (create directory if it doesn't exists).
And then change option to `avatar: /uploads/avatar.png`.
<!-- endtab -->

<!-- tab NexT directory -->
Put your avatar under {% label primary@theme directory %} `source/images/`.
And then change option to `avatar: /images/avatar.png`.

{% note info %}
Current site uses avatar under {% label primary@theme directory %} from file located in `next/source/images/apple-touch-icon-next.png` with following config:

{% code lang:yml hexo/_config.yml %}
theme_config:
  avatar:
    url: /images/apple-touch-icon-next.png
    rounded: true
    opacity: 1
    rotated: false
{% endcode %}

{% endnote %}
<!-- endtab -->

<!-- tab Absolute URL from Internet -->
You also can specify any external URL with absolute path to image: `http(s)://example.com/avatar.png`
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>rounded</code> -->
Set up rounded of avatar by changing the value of `avatar.rounded`:

* `true` → Avatar will be rounded.
* **`false`** → Avatar will be squared.

{% code lang:yml next/_config.yml %}
avatar:
  rounded: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>rotated</code> -->
Set up rotated of avatar by changing the value of `avatar.rotated`:

* `true` → Avatar will be rotate under the mouse hovering.
* **`false`** → Avatar will not rotate under the mouse hovering.

{% code lang:yml next/_config.yml %}
avatar:
  rotated: false
{% endcode %}

<!-- endtab -->

<!-- tab <code>opacity</code> -->
The value of opacity should be choose from 0 to 1 to set the opacity of the avatar:

* **`1`** → Avatar will be in default opacity style.
* `0` → Avatar will be transparent.

{% code lang:yml next/_config.yml %}
avatar:
  opacity: 1
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Configuring Author

Edit {% label info@site config file %} and set the value of `author` to your nickname.

```yml hexo/_config.yml
# Site
author:
```

#### Configuring Description

Edit {% label info@site config file %} and set the value of `description` to your description, which can be a sentence you like.

```yml hexo/_config.yml
# Site
description:
```

After that we can [configure deployment](/docs/getting-started/deployment/).