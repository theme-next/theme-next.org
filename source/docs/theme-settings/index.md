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

### RSS Support

There are three RSS options in NexT to fit different cases.
Edit {% label primary@theme config file %} and set the value of `rss`:

* `false`: Disable RSS, which won't show links on page.
* Leave Blank: Use Hexo to generate feed and insert links automatically. You may need to install [hexo-generator-feed](https://github.com/hexojs/hexo-generator-feed) plugin with npm firstly.
* Concrete URL: This means you have generate Feed in advance.

### GitHub Banner

NexT provides `Follow me on GitHub` banner in right-top corner.

```yml next/_config.yml
# Follow me on GitHub banner in right-top corner.
github_banner:
  enable: false
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

### Custom Logo Support

NexT supports the site logo personalization.

{% tabs custom_logo %}
<!-- tab <code>enable</code> → -->
You can enable it by editing values `custom_logo.enable` to `true` in {% label primary@theme config file %}.

{% codeblock lang:yml next/_config.yml %}
custom_logo:
  enable: false
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

### Custom Style Support

Like [Next Data files](/docs/getting-started/data-files/), you can put all your custom styles into one place (`hexo/source/_data`).

- `head`: It's custom swig styles placed in `layout/_custom/head.swig`.
- `header`: It's custom swig styles placed in `layout/_custom/header.swig`.
- `sidebar`: It's custom swig styles placed in `layout/_custom/sidebar.swig`.
- `variables`: It's variables styles placed in `source/css/_variables/custom.styl`.
- `mixins`: It's mixins styles placed in `source/css/_mixins/custom.styl`.
- `styles`: It's custom styles placed in `source/css/_custom/custom.styl`.

Add your custom files in `hexo/source/_data` and uncomment needed files under the `custom_file_path` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
# For example, you want to put your custom styles file
# outside theme directory in root `source/_data`, set
# `styles: source/_data/styles.styl`
#custom_file_path:
  # Default paths: layout/_custom/*
  #head: source/_data/head.swig
  #header: source/_data/header.swig
  #sidebar: source/_data/sidebar.swig

  # Default path: source/css/_variables/custom.styl
  #variables: source/_data/variables.styl
  # Default path: source/css/_mixins/custom.styl
  #mixins: source/_data/mixins.styl
  # Default path: source/css/_custom/custom.styl
  #styles: source/_data/styles.styl
```

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

### Tagcloud

By default, NexT has setted font color and size for tagcloud.
From NexT v7.0.2 you can customize them, just set related values in {% label primary@theme config file %}:

   ```yml next/_config.yml
   tagcloud:
     # If true, font size and color can be customized
     enable: true

     # All values below are same as default, change them by yourself
     min: 12 # min font size in px
     max: 30 # max font size in px
     start: '#ccc' # start color (hex, rgba, hsla or color keywords)
     end: '#111' # end color (hex, rgba, hsla or color keywords)
   ```

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

### Reward (Donate)

More and more platform (WeChat public accounts, Weibo, Jianshu, Baidu Reward) supports reward (donate). To catch paid reading trends, we added reward feature, supports WeChat Pay, Alipay and Bitcoin. What you need is:

1. Get your WeChat Pay / Alipay / Bitcoin receive money QRcode image(s) and put into `source/images` under {% label primary@theme directory %} or upload it(them) to an image cloud to get the absolute HTTP address(es).
2. Set needed values in  {% label primary@theme config file %}:

   ```yml next/_config.yml
   # Reward
   reward:
     enable: true
     comment: Donate comment here
     wechatpay: /images/wechatpay.jpg # or HTTP address like https://i.loli.net/2017/07/04/595a7e1e266f2.gif
     alipay: /images/alipay.jpg
     bitcoin: /images/bitcoin.png
   ```

### WeChat Subscribing

Show your WeChat public account QRcode after each article, subscribing blog by simply scanning.

1. Download your QRcode from WeChat Public Platform, and save it under `source/uploads/` {% label info@site directory %}.
2. Edit {% label primary@theme config file %} like following:

  ```yml next/_config.yml
  wechat_subscriber:
    enable: true
    qcode: /uploads/wechat-qcode.jpg
    description: Welcome to scan the WeChat Public Account QRcode and subscribe my blog!
  ```

### Mobile Devices Adaptation

{% tabs Mobile-Adaptation %}
<!-- tab <code>mobile_layout_economy</code> -->
If you want to reduce padding/margin indents on devices with narrow width, you can enable it by editing values `mobile_layout_economy` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
mobile_layout_economy: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>android_chrome_color</code> -->
By default NexT uses black-deep (`#222`) as the color of android Chrome header panel. You can configure it by editing values with Hex color in `android_chrome_color` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
android_chrome_color: "#222"
{% endcode %}
<!-- endtab -->

{% endtabs %}

### Back To Top

{% tabs b2t %}
<!-- tab <code>enable</code> -->
{% code lang:yml next/_config.yml %}
back2top:
  enable: true
{% endcode %}
Set the value `back2top.enable` to `true` to display `Back to top` button.
<!-- endtab -->

<!-- tab <code>enable</code> -->
{% code lang:yml next/_config.yml %}
back2top:
  # Back to top in sidebar.
  sidebar: true
{% endcode %}

Set the value `back2top.sidebar` to `true` to put the button in sidebar.
<!-- endtab -->

<!-- tab <code>scrollpercent</code> -->
{% code lang:yml next/_config.yml %}
back2top:
  # Scroll percent label in b2t button.
  scrollpercent: true
{% endcode %}

Set the value `back2top.scrollpercent` to `true` to display scroll percent label in `Back to top` button.
<!-- endtab -->
{% endtabs %}

### Site Footer Setting

#### Site Start Time

By default NexT shows current year in the footer like `© 2018`. You can configure it to show the time gap like `© 2015 - 2018` by editing values in `since` section in {% label primary@theme config file %}.

```yml next/_config.yml
footer:
  since: 2015
```

#### Site Footer Icon

By default NexT shows black `user` icon {% btn #,, user %} without animation between year and copyright information in the footer. You can configure it by editing values in `icon` section in {% label primary@theme config file %}.

{% tabs icon %}
<!-- tab <code>name</code> -->
The name of footer icon can be founded in [Font Awesome](https://fontawesome.com) site. `heart` is recommended.

{% code lang:yml next/_config.yml %}
footer:
  icon:
    name: user
{% endcode %}

<!-- endtab -->

<!-- tab <code>animated</code> -->
Set up animated of footer icon by changing the value of `icon.animated`:

* `true` → Icon will be animated.
* **`false`** → Icon will not be animated.

{% code lang:yml next/_config.yml %}
footer:
  icon:
    animated: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>color</code> -->
Set up color of footer icon by changing the value of `icon.color`. Please use Hex Code, and red (#ff0000) is recommended for `heart` icon.

{% code lang:yml next/_config.yml %}
footer:
  icon:
    color: "#808080"
{% endcode %}

<!-- endtab -->
{% endtabs %}

#### Site Copyright Name

By default NexT shows the name of `author` from {% label info@site config file %}. You can configure it by editing values in `copyright` section in {% label primary@theme config file %}.

```yml next/_config.yml
footer:
  copyright:
```

#### Site Platform Information

By default NexT shows Hexo and Theme & scheme information like `Powered by Hexo v3.7.1 | Theme — NexT.Muse v6.3.0`. You can configure it by editing values in `powered` and `theme` section in {% label primary@theme config file %}.

{% tabs platform %}
<!-- tab <code>powered</code> -->

{% subtabs platform1 %}
<!-- tab <code>enable</code> -->
* **`true`** → Displaying `Powered by Hexo` Information.
* `false` → Not Displaying `Powered by Hexo` Information.

{% code lang:yml next/_config.yml %}
footer:
  powered:
    enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Hexo Version Information.
* `false` → Not Displaying Hexo Version Information.

{% code lang:yml next/_config.yml %}
footer:
  powered:
    version: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>theme</code> -->

{% subtabs platform2 %}
<!-- tab <code>enable</code> -->
* **`true`** → Displaying Theme & Scheme Information.
* `false` → Not Displaying Theme & Scheme Information.

{% code lang:yml next/_config.yml %}
footer:
  theme:
    enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Theme NexT Version Information.
* `false` → Not Displaying Theme NexT Version Information.

{% code lang:yml next/_config.yml %}
footer:
  theme:
    version: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

{% endtabs %}

#### Adding Custom Information

If you want, any custom text can be defined within footer in `custom_text` section in {% label primary@theme config file %} like:

```yml next/_config.yml
footer:
  custom_text: Hosted by <a target="_blank" rel="external nofollow" href="https://pages.coding.me"><b>Coding Pages</b></a>
```

### SEO Setting

Next provides useful options for better Search Engine Optimization (SEO).

{% tabs SEO %}
<!-- tab <code>canonical</code> -->
By default a canonical link tag is created in Hexo by setting the value `canonical` to `true` in {% label primary@theme config file %} after you have set up your URL `url: http://yoursite.com` in {% label info@site config file %}. More detailed information can be found in [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066).

{% code lang:yml next/_config.yml %}
canonical: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>seo</code> -->
Set the value `enable` to `true` in `seo` section to change headers hierarchy on `subtitle` in {% label info@site config file %} and on all post/pages titles for better SEO in {% label primary@theme config file %} as following:

{% code lang:yml next/_config.yml %}
seo: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>index_with_subtitle</code> -->
Set the value `enable` to `true` in `index_with_subtitle` section to add `subtitle` information in {% label info@site config file %} to index page.

{% code lang:yml next/_config.yml %}
index_with_subtitle: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

NexT also supports the baidu push so that the blog will push the url to baidu automatically which is very helpful for SEO. You can enable it by editing values `related_posts.enable` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
baidu_push: false
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
