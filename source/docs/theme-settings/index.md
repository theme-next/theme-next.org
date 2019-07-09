---
title: Theme Settings
date: 2018-02-08 18:50:03
description: NexT User Docs – Theme Settings
---
NexT insists to hide complex details and gives you a simple but flexible config, so you can use it easily.

### Cache Support

NexT v6+ allows to cache content generation. Set the value `enable` to `true` in `cache` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
# Allow to cache content generation. Introduced in NexT v6.0.0.
cache:
  enable: true
```

### Custom Style Support

Like [Next Data files](/docs/getting-started/data-files), you can put all your custom styles into one place (`hexo/source/_data`). Add your custom files in `hexo/source/_data` and uncomment needed files under the `custom_file_path` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
# For example, you want to put your custom styles file
# outside theme directory in root `source/_data`, set
# `styles: source/_data/styles.styl`
custom_file_path:
  #head: source/_data/head.swig
  #header: source/_data/header.swig
  #sidebar: source/_data/sidebar.swig
  #postMeta: source/_data/post-meta.swig
  #postBodyEnd: source/_data/post-body-end.swig
  #footer: source/_data/footer.swig
  #bodyEnd: source/_data/body-end.swig
  #variable: source/_data/variables.styl
  #mixin: source/_data/mixins.styl
  #style: source/_data/styles.styl
```

### RSS Support

There are three RSS options in NexT to fit different cases.
Edit {% label primary@theme config file %} and set the value of `rss`:

* `false`: Disable RSS, which won't show links on page.
* Leave Blank: Use Hexo to generate feed and insert links automatically. You may need to install [hexo-generator-feed](https://github.com/hexojs/hexo-generator-feed) plugin with npm firstly.
* Concrete URL: This means you have generate Feed in advance.

### Creative Commons

NexT supports the display of [Creative Commons 4.0 International License](http://creativecommons.org/) in sidebar and post including `by`, `by-nc`, `by-nc-nd`, `by-nc-sa`, `by-nd`, `by-sa`, `zero`. These licenses allow creators to communicate which rights they reserve, and which rights they waive for the benefit of recipients or other creators.

You can configure it by editing values in `creative_commons` section in {% label primary@theme config file %}, for example:

```yml next/_config.yml
creative_commons:
  license: by-nc-sa
  sidebar: true
  post: true
  language: deed.zh
```

### GitHub Banner

NexT provides `Follow me on GitHub` banner in right-top corner.

```yml next/_config.yml
# Follow me on GitHub banner in right-top corner.
github_banner:
  enable: true
  permalink: https://github.com/yourname
  title: Follow me on GitHub
```

{% tabs github-banner %}
<!-- tab <code>permalink</code> -->
`permalink` → is the specified link must have full url path.
<!-- endtab -->

<!-- tab <code>title</code> -->
`title` → is the title and aria-label name.
<!-- endtab -->
{% endtabs %}

You can set `enable` to `true` and add your own GitHub link.

### Mobile Devices Adaptation

{% tabs Mobile-Adaptation %}
<!-- tab <code>mobile_layout_economy</code> -->
If you want to reduce padding/margin indents on devices with narrow width, you can enable it by editing values `mobile_layout_economy` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
mobile_layout_economy: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>android_chrome_color</code> -->
By default NexT uses black-deep (`#222`) as the color of android Chrome header panel. You can configure it by editing values with Hex color in `android_chrome_color` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
android_chrome_color: "#222"
{% endcode %}
<!-- endtab -->

{% endtabs %}

### Rainbow Safari

If you want to hide sticky headers and color the menu bar on Safari (iOS / macOS), you can set `safari_rainbow` to `true`. More information here: [rainbowsafari](https://github.com/koole/rainbowsafari).

{% code lang:yml next/_config.yml %}
safari_rainbow: true
{% endcode %}

### Custom Scrollbar Support

NexT supports the scrollbar personalization.

{% note danger %}
Only works on webkit based browsers.
{% endnote %}

{% code lang:yml next/_config.yml %}
custom_scrollbar: true
{% endcode %}

### Custom Logo Support

NexT supports the site logo personalization.

{% tabs custom_logo %}
<!-- tab <code>enable</code> → -->
You can enable it by editing values `custom_logo.enable` to `true` in {% label primary@theme config file %}.

{% codeblock lang:yml next/_config.yml %}
custom_logo:
  enable: true
{% endcodeblock %}
<!-- endtab -->

<!-- tab <code>image</code> -->
Then you can add images's url by editing values in `custom_logo.image` section in {% label primary@theme config file %}.

{% codeblock lang:yml next/_config.yml %}
custom_logo:
  image:
{% endcodeblock %}
<!-- endtab -->

{% endtabs %}

{% note danger %}
Scheme Mist does not support custom logo setting under **6.0.x** version or highter.
{% endnote %}

### Fonts Customization

To solve the unstable of [Google Fonts API](https://www.google.com/fonts) in some countries, NexT supports setting fonts. By using this feature you can assign URL of fonts library. And NexT gives you 5 specific font settings, they are:

* Global Font: Font used in the whole site.
* Title Font: Font used by titles in articles (H1, H2, H3, H4, H5, H6).
* Article Font: Font used by articles.
* Logo Font: Font used by Logo.
* Code Font: Font used by code blocks in articles.

Each fonts will be used as the first font of this class, NexT will fallback to internal font settings if they are unavalible.

* Non-code Font: Fallback to `"PingFang SC", "Microsoft YaHei", sans-serif`
* Code Font: Fallback to `consolas, Menlo, "PingFang SC", "Microsoft YaHei", monospace`

Plus each section has a `external` attribute, this controls whether to use the font library CDN.
Use this can help you to use fonts installed in system and reduce unnecessary requests.

```yml next/_config.yml
font:
  enable: true

  # Font library CDN, e.g. //fonts.googleapis.com (Default)
  host:

  # Global font settings used for all elements in <body>.
  global:
    external: true
    family: Monda
    size:

  # Font settings for Headlines (H1, H2, H3, H4, H5, H6).
  # Fallback to `global` font settings.
  headings:
    external: true
    family: Roboto Slab
    size:

  # Font settings for posts.
  # Fallback to `global` font settings.
  posts:
    external: true
    family:

  # Font settings for Logo.
  # Fallback to `global` font settings.
  logo:
    external: true
    family: Lobster Two
    size: 24

  # Font settings for <code> and code blocks.
  codes:
    external: true
    family: PT Mono
    size:
```

### Animation Effect

NexT enables animation effect by default which is supported by JavaScript, so it will wait for JavaScript loaded to show content.
If you need speed you can set this section to `false` to disable it.

Edit {% label primary@theme config file %} and set the needed values under the `motion` to fit your demand.

```yml next/_config.yml
# Use velocity to animate everything.
motion:
  enable: true
  async: false
  transition:
    # Transition variants:
    # fadeIn | fadeOut | flipXIn | flipXOut | flipYIn | flipYOut | flipBounceXIn | flipBounceXOut | flipBounceYIn | flipBounceYOut
    # swoopIn | swoopOut | whirlIn | whirlOut | shrinkIn | shrinkOut | expandIn | expandOut
    # bounceIn | bounceOut | bounceUpIn | bounceUpOut | bounceDownIn | bounceDownOut | bounceLeftIn | bounceLeftOut | bounceRightIn | bounceRightOut
    # slideUpIn | slideUpOut | slideDownIn | slideDownOut | slideLeftIn | slideLeftOut | slideRightIn | slideRightOut
    # slideUpBigIn | slideUpBigOut | slideDownBigIn | slideDownBigOut | slideLeftBigIn | slideLeftBigOut | slideRightBigIn | slideRightBigOut
    # perspectiveUpIn | perspectiveUpOut | perspectiveDownIn | perspectiveDownOut | perspectiveLeftIn | perspectiveLeftOut | perspectiveRightIn | perspectiveRightOut
    post_block: fadeIn
    post_header: slideDownIn
    post_body: slideDownIn
    coll_header: slideLeftIn
    # Only for Pisces | Gemini.
    sidebar: slideUpIn
```
