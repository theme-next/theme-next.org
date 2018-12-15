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
* Leave Blank: Use Hexo to generate feed and insert links automatically. You may need to install {% exturl hexo-generator-feed https://github.com/hexojs/hexo-generator-feed %} plugin with npm firstly.
* Concrete URL: This means you have generate Feed in advance.

### GitHub Banner

NexT provides `Follow me on GitHub` banner in right-top corner. GitHub banner has format `permalink || title` which contains 2 values:

{% tabs gitHub-banner %}
<!-- tab <code>permalink</code> -->
Value before `||` delimeter (`permalink`) → is the specified link must have full url path.
<!-- endtab -->

<!-- tab <code>title</code> -->
Value after `||` delimeter (`title`) → is the title and aria-label name.
<!-- endtab -->
{% endtabs %}

You can uncomment `github_banner` value and add your GitHub link in {% label primary@theme config file %} as following:

```yml next/_config.yml
github_banner: https://github.com/yourname || Follow me on GitHub
```

### Custom Logo Support

NexT supports the site logo personalization.

{% tabs custom_logo %}
<!-- tab <code>enabled</code> → -->
You can enable it by editing values `custom_logo.enable` to `true` in {% label primary@theme config file %}.

{% codeblock lang:yml next/_config.yml %}
custom_logo:
  enabled: false
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
For now only default Muse Scheme supports custom logo setting under **6.0.x** version or highter.
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

### Custom Page Support

Next allows users to add custom pages in menu.

{% tabs adding-custom-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page custom_name` to create a new `custom_name` page:

    $ cd your-hexo-site
    $ hexo new page custom_name

<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in {% exturl Front-matter https://hexo.io/docs/front-matter.html %}. You can also add contents in `custom_name/index.md` if you like.

{% codeblock lang:md %}
title: custom_name
date: 2014-12-22 12:39:04
---
{% endcodeblock %}
<!-- endtab -->

<!-- tab Editting Menu -->
Add `custom_name` to `menu` by editing {% label primary@theme config file %}, like adding `about` page:
{% codeblock lang:yml next/_config.yml %}
menu:
  home: / || home
  archives: /archives/ || archive
  about: /about/ || user
{% endcodeblock %}
<!-- endtab -->
{% endtabs %}

If you want to add Tags or Categories page, please continue reading.

#### Adding «Tags» Page

Adding «Tags» page and show «Tags» link in menu. «Tags» page will show all tags of site. If no article has tags, this page will leave blank.
Following code shows you a example of article with tags:

{% tabs tags-variants %}
<!-- tab Variant 1 -->
{% codeblock lang:md %}
title: Tags Testing Article
tags: [Testing, Another Tag]
---
{% endcodeblock %}
<!-- endtab -->

<!-- tab Variant 2 -->
{% codeblock lang:md %}
title: Tags Testing Article
tags:
  - Testing
  - Another Tag
---
{% endcodeblock %}
<!-- endtab -->
{% endtabs %}

{% note info %}
Please read {% exturl Hexo's Docs of Categories & Tags https://hexo.io/docs/front-matter.html#Categories-amp-Tags %} to know how to add tags or categories for articles.
{% endnote %}

{% tabs adding-tags-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page tags` to create a new `tags` page:

    $ cd your-hexo-site
    $ hexo new page tags

<!-- endtab -->

<!-- tab Setting Page Type → -->
Edit the new page and change the type to `"tags"`, theme will show tags cloud automatically in this page. Page content looks like following:

{% codeblock lang:md %}
title: Tags
date: 2014-12-22 12:39:04
type: "tags"
---
{% endcodeblock %}
<!-- endtab -->

<!-- tab Editting Menu -->
Add `tags` to `menu` by editing {% label primary@theme config file %}, like following:
{% codeblock lang:yml next/_config.yml %}
menu:
  home: / || home
  archives: /archives/ || archive
  tags: /tags/ || tags
{% endcodeblock %}
<!-- endtab -->
{% endtabs %}

{% note warning %}
If you enable any comment system for your site, comments will be shown for all posts and pages.
See [«How to Disable Comments on Page»](/docs/faqs/#How-to-Disable-Comments-on-Page) if you want to do it for pages like `tags` or `categories`.
{% endnote %}

#### Adding «Categories» Page

{% note default %}
«Categories» page can be added in similar way as [«Tags» page](#Adding-%C2%ABTags%C2%BB-Page), only name there is difference: just need to replace `tags` with `categories`.
{% endnote %}

#### Adding Google Calendar Page

{% tabs calendar %}
<!-- tab Adding Schedule Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page schedule` to create a new `schedule` page:

    $ cd your-hexo-site
    $ hexo new page schedule

<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in {% exturl Front-matter https://hexo.io/docs/front-matter.html %}. You can also add contents in `schedule/index.md` if you like.

{% codeblock lang:md %}
title: schedule
date: 2014-12-22 12:39:04
---
{% endcodeblock %}
<!-- endtab -->

<!-- tab Editting Menu → -->
Add `schedule` to `menu` by editing {% label primary@theme config file %}:
{% codeblock lang:yml next/_config.yml %}
menu:
  home: / || home
  archives: /archives/ || archive
  schedule: /schedule/ || calendar
{% endcodeblock %}
<!-- endtab -->

<!-- tab Setting Google Calendar-->

{% subtabs calendar1 %}
<!-- tab Get calendar ID and API KEY→  -->
Login to {% exturl Google developers https://console.developers.google.com/flows/enableapi?apiid=calendar %} and add Google Calendar API, you will get your calendar ID and API KEY. {% exturl More detailed documentation https://developers.google.com/calendar/quickstart/js %}

<!-- endtab -->
<!-- tab NexT Config  -->
You can enable it by editing values `calendar.enable` to `true`, and copy the value of calendar ID and API KEY in {% label primary@theme config file %}.

{% codeblock lang:yml next/_config.yml %}
calendar:
  enable: false
  calendar_id: <required>
  api_key: <required>
  orderBy: startTime
  offsetMax: 24
  offsetMin: 4
  timeZone:
  showDeleted: false
  singleEvents: true
  maxResults: 250
{% endcodeblock %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

#### Cheers Archive Page

By default NexT shows the cheers characters from `ok` to `excellent` according to the numbers of your posts. You can disable it by editing values `cheers_enabled` to `false` in {% label primary@theme config file %}.

```yml next/_config.yml
cheers_enabled: true
```

### Fonts Customization

To solve the unstable of {% exturl Google Fonts API https://www.google.com/fonts %} in some countries, NexT supports setting fonts. By using this feature you can assign URL of fonts library. And NexT gives you 5 specific font settings, they are:

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

### Post Settings

#### Page Scroll

{% tabs page-scroll %}
<!-- tab <code>scroll_to_more</code> -->
By default NexT scrolls page automatically to section which is under <!-- more --> mark. You can disable it by editing values `scroll_to_more` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
scroll_to_more: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>save_scroll</code> -->
If you want to save page scroll position automatically in cookies, you can enable it by editing values `save_scroll` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
save_scroll: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Preamble Text

It's a common need to show some part of article in home page and then give a link to full article. NexT gives 3 ways to control how article is shown in home page. In other words, you can use following ways to show summary of articles and a **Read More** button.

{% tabs preamble %}
<!-- tab <code>excerpt_description</code> -->
If you have added `description` and set its value to your article summary in {% exturl front-matter https://hexo.io/docs/front-matter.html %}, NexT excerpts `description` as preamble text in homepage by default. Without `description`, the full contents would be the preamble text in homepage.

You can disable it by editing values `excerpt_description` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
excerpt_description: true
{% endcode %}

<!-- endtab -->

<!-- tab {% label success@Tag more %} -->
Use `<!-- more -->` in your article to break your article manually, which is recommended by Hexo.

<!-- endtab -->

<!-- tab {% label warning@auto_excerpt %} -->
Next would use `150` characters from article header automatically as preamble text by editing values `auto_excerpt.enable` to `true`.

You can configure it by editing values in `auto_excerpt` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
auto_excerpt:
  enable: false
  length: 150
{% endcode %}
<!-- endtab -->

{% endtabs %}

{% note info %}
It is recommended to use `<!-- more -->` which can not only control what you want to show better, but also let Hexo's plugins use it easily.
{% endnote %}

#### Post Meta Display

NexT supports post created date, post updated date and post categories display.

{% tabs postmeta %}
<!-- tab <code>item_text</code> -->
By default NexT shows the description text of post meta. You can disable it by editing values `post_meta.item_text` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  item_text: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>created_at</code> -->
By default NexT shows the post created date in post meta section and created time in popup. You can disable it by editing values `post_meta.created_at` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  created_at: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>updated_at</code> -->

{% subtabs postmeta1 %}
<!-- tab <code>enabled</code> -->
By default NexT shows the post updated date in post meta section and updated time in popup. You can disable it by editing values `post_meta.updated_at.enabled` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  updated_at:
    enabled: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>another_day</code> -->
By default edited time would be show in popup message if updated/edited date is same as created date. You can disable it by editing values `post_meta.updated_at.another_day` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  updated_at:
    another_day: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab <code>categories</code> -->
By default NexT shows the post categorie in post meta section. You can disable it by editing values `post_meta.categories` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  categories: true
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Post Wordcount

3rd-party plugin `{% exturl hexo-wordcount https://github.com/willin/hexo-wordcount %}` was replaced by `{% exturl hexo-symbols-count-time https://github.com/theme-next/hexo-symbols-count-time %}` in 6.x versions because `hexo-symbols-count-time` no have any external nodejs dependencies, no have {% exturl language filter https://github.com/willin/hexo-wordcount/issues/7 %} which causes better performance on speed at site generation.

{% tabs wordcount %}
<!-- tab Installation → -->
Install `hexo-symbols-count-time` by run following command in {% label info@site root dir %}:

    $ npm install hexo-symbols-count-time --save

<!-- endtab -->

<!-- tab Hexo Config → -->
Activate this plugin in {% label info@site config file %} by enabled any option:

{% subtabs wordcount1 %}
<!-- tab <code>symbols</code> -->
By default NexT shows the number of post words in post meta section. You can disable it by editing values `symbols_count_time.symbols` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  symbols: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>time</code> -->
By default NexT shows the estimated reading time of post in post meta section. You can disable it by editing values `symbols_count_time.time` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  time: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>total_symbols</code> -->
By default NexT shows the number of all posts words in footer section. You can disable it by editing values `symbols_count_time.total_symbols` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  total_symbols: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>total_time</code> -->
By default NexT shows the estimated reading time of all posts in footer section. You can disable it by editing values `symbols_count_time.total_time` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  total_time: true
{% endcode %}
<!-- endtab -->

{% endsubtabs %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin enabled, you may adjust options in `symbols_count_time` section in {% label primary@theme config file %}:

{% subtabs wordcount2 %}
<!-- tab <code>separated_meta</code> -->
By default NexT shows the words counts and estimated reading time in a separated line. You can add them into one line by editing values `symbols_count_time.separated_meta` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  separated_meta: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>item_text_post</code> -->
By default NexT shows the text description of the words counts and estimated reading time in post meta section. You can disable it by editing values `symbols_count_time.item_text_post` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  item_text_post: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>item_text_total</code> -->
By default NexT doesn't shows the text description of the words counts and estimated reading time in footer section. You can enable it by editing values `symbols_count_time.item_text_total` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  item_text_total: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>awl</code> -->
`awl` means the average Word Length (chars count in word). You can check this {% exturl here https://charactercounttool.com/ %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  awl: 4
{% endcode %}
<!-- endtab -->

<!-- tab <code>wpm</code> -->
`wpm` means the average words per minute. You can check this {% exturl here https://wordcounter.net/ %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  wpm: 275
{% endcode %}
<!-- endtab -->

{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

#### Post Codeblock

{% tabs codeblock %}
<!-- tab <code>border_radius</code> -->
By default NexT defines the default value of codeblock border radius as 1. You can configure it by editing `border_radius` values in `codeblock` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
codeblock:
  border_radius:
{% endcode %}
<!-- endtab -->

<!-- tab <code>copy_button</code> -->
NexT supports the copy-and-paste functionality of codeblock.

{% subtabs codeblock1 %}
<!-- tab <code>enable</code> -->
You can enable it by editing values `copy_button.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
codeblock:
  copy_button:
    enable: false
{% endcode %}
<!-- endtab -->
<!-- tab <code>show_result</code> -->
By default NexT doesn't show copy results of the copy-and-paste functionality. You can also enable it by editing values `copy_button.show_result` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
codeblock:
  copy_button:
    show_result: false
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

#### Code Highlight Theme

NexT uses {% exturl Tomorrow Theme https://github.com/chriskempson/tomorrow-theme %} to support code highlight.
Default style is white (`normal`) and there are 5 styles to choose:

* `normal`
* `night`
* `night blue`
* `night bright`
* `night eighties`

Change the value of `highlight_theme` to choose the highlight style you like, for example:

```yml next/_config.yml
# Code Highlight theme
# Available values: normal | night | night eighties | night blue | night bright
# https://github.com/chriskempson/tomorrow-theme
highlight_theme: night
```
#### Post Copyright
NexT supports the copyright declaration for your posts.

{% tabs post_copyright %}
<!-- tab <code>enable</code> -->
You can enable it by editing values `post_copyright.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
post_copyright:
  enable: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>license</code> -->
You can also configure your custom license by editing values in `post_copyright.license` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
post_copyright:
  license: <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" rel="external nofollow" target="_blank">CC BY-NC-SA 4.0</a>
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Post Edit
NexT supports the edit functionality of your posts.

{% tabs post_edit %}
<!-- tab <code>enable</code> -->
You can enable it by editing values `post_edit.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
post_edit:
  enable: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>url</code> -->
You should create a source repository of your post files. The `url` setting depends on the source project in github.

* For site repository
    * Link for view source: `url: https://github.com/.../tree/master/source/_posts/`
    * Link for fork & edit: `url: https://github.com/.../edit/master/source/_posts/`
* For post repository
    * Link for view source: `url: https://github.com/.../_posts/tree/master/`
    * Link for fork & edit: `url: https://github.com/.../_posts/edit/master/`

{% code lang:yml hexo/_config.yml %}
post_edit:
  url:
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Related popular posts (REDOCS)

NexT supports the related posts functionality according to {% exturl hexo-related-popular-posts https://github.com/tea3/hexo-related-popular-posts %}.

{% tabs related_posts %}
<!-- tab <code>enable</code> -->
You can enable it by editing values `related_posts.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  enable: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>title</code> -->
By default NexT uses 'Related Posts' as title by default. You can configure it by editing values in `related_posts.title` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  title:
{% endcode %}
<!-- endtab -->

<!-- tab <code>display_in_home</code> -->
By default NexT doesn't show the related posts in homepage. You can enable it by editing values `related_posts.display_in_home` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  display_in_home: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>params</code> -->
2


{% subtabs related_posts1 %}
<!-- tab <code>maxCount</code> -->
1.1
<!-- endtab -->
<!-- tab <code>PPMixingRate</code> -->
1.2
<!-- endtab -->
<!-- tab <code>isDate</code> -->
1.2
<!-- endtab -->
<!-- tab <code>isImage</code> -->
1.2
<!-- endtab -->
<!-- tab <code>isExcerpt</code> -->
1.2
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

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
    enabled: true
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


### Sidebar Setting

#### Sidebar Style

By default sidebar only shows in posts (have a table of content), and is placed in left side. You can change it by editing values under `sidebar` setting in {% label primary@theme config file %}.

Sidebar has several options, but for now we will consider `position`, `width`, `display`, `offset`, `b2t`, `scrollpercent`, and `onmobile` options.

{% tabs setting-sidebar %}
<!-- tab <code>position</code> -->
Set up sidebar position by changing the value of `sidebar.position`, which can be one of following:

* **`left`** → Place at the left of the screen.
* `right` → Place at the right of the screen.

{% code lang:yml next/_config.yml %}
sidebar:
  position: left
  #position: right
{% endcode %}
{% note danger %}
For now only Pisces / Gemini Schemes supports `position` setting under **6.0.x** version or highter.
{% endnote %}
<!-- endtab -->

<!-- tab <code>width</code> -->
You can change sidebar width by specify `sidebar.width` setting in pixels, for example:

{% code lang:yml next/_config.yml %}
sidebar:
  width: 300
{% endcode %}

{% note warning %}
This option commented out by default and values are:

* For Muse | Mist schemes: `320`
* For Pisces | Gemini schemes: `240`

{% endnote %}

{% note danger %}
From version {% label danger@6.0.4 %} to {% label danger@6.3.0 %} option was called `sidebar_width` and was available for Gemini Scheme only.
From {% label danger@6.4.0 %} version or highter, option renamed to `sidebar.width` and available for all schemes.
{% endnote %}
<!-- endtab -->

<!-- tab <code>display</code> -->
Set up conditions under which sidebar will show by editing `sidebar.display` value, which can be one of following:

* **`post`** → Show sidebar only in posts which have index.
* `always` → Show sidebar in all pages.
* `hide` → Hide it in all pages (but can be opened by user manually).
* `remove` → Remove sidebar totally.

{% code lang:yml next/_config.yml %}
sidebar:
  display: post
  #display: always
  #display: hide
  #display: remove
{% endcode %}
<!-- endtab -->

<!-- tab <code>offset</code> -->
Set up sidebar offset from top menubar in pixels by changing the value of `sidebar.offset`, which can be one of following:

{% code lang:yml next/_config.yml %}
sidebar:
  offset: 12
{% endcode %}

{% note danger %}
For now only Pisces / Gemini Schemes supports `offset` setting under **6.0.x** version or highter.
{% endnote %}
<!-- endtab -->

<!-- tab <code>b2t</code> -->
Set the value `sidebar.b2t` to `true` to display `Back to top` button as following:

{% code lang:yml next/_config.yml %}
sidebar:
  b2t: false
{% endcode %}

{% note danger %}
For now only Pisces / Gemini Schemes supports `b2t` setting under **6.0.x** version or highter.
{% endnote %}
<!-- endtab -->

<!-- tab <code>scrollpercent</code> -->
Set the value `sidebar.scrollpercent` to `true` to display scroll percent label in `Back to top` button as following:

{% code lang:yml next/_config.yml %}
sidebar:
  scrollpercent: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>onmobile</code> -->
Set the value `sidebar.onmobile` to `true` to enable sidebar on narrow view for mobile device as following:

{% code lang:yml next/_config.yml %}
sidebar:
  onmobile: false
{% endcode %}

{% note danger %}
For now only Muse / Mist Schemes supports `onmobile` setting under **6.0.x** version or highter.
{% endnote %}
<!-- endtab -->

{% endtabs %}

#### Sidebar Site State

By default NexT shows the categories and counts of Posts / Categories / Tags in sidebar. You can configure it by editing values in `site_state` section in {% label primary@theme config file %}.

```yml next/_config.yml
site_state: true
```

#### Sidebar Social Links

{% note default %}
Social Links have similar fucture as [Menu Items](../getting-started/#Configuring-Menu-Items), only target link there is difference: specified link must have full url path (permalink).
{% endnote %}

Edit the `social` section in {% label primary@theme config file %} as following:

```yml next/_config.yml
social:
  GitHub: https://github.com/yourname || github
  E-Mail: mailto:yourname@gmail.com || envelope
  Google: https://plus.google.com/yourname || google
  Twitter: https://twitter.com/yourname || twitter
  FB Page: https://www.facebook.com/yourname || facebook
  VK Group: https://vk.com/yourname || vk
  StackOverflow: https://stackoverflow.com/yourname || stack-overflow
  YouTube: https://youtube.com/yourname || youtube
  Instagram: https://instagram.com/yourname || instagram
  Skype: skype:yourname?call|chat || skype
```

By default NexT shows the icons of social links in sidebar.

{% tabs social_icons %}
<!-- tab <code>enable</code> -->
You can configure it by editing values in `social_icons.enable` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
social_icons:
  enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>icons_only</code> -->
Set the value `icons_only` to `true` to display social icons without description in `social_icons` section in {% label primary@theme config file %} as following:

{% code lang:yml next/_config.yml %}
social_icons:
  icons_only: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>transition</code> -->
Set the value `transition` to `true` to display social icons with transition effects in `social_icons` section in {% label primary@theme config file %} as following:

{% code lang:yml next/_config.yml %}
social_icons:
  transition: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>exturl</code> -->
Set the value `exturl` to `true` to {% exturl encrypt social links https://www.base64encode.org %} in `social_icons` section in {% label primary@theme config file %}. For example, encoded GitHub link: `GitHub: aHR0cHM6Ly9naXRodWIuY29tL3RoZW1lLW5leHQ= || github`.

{% code lang:yml next/_config.yml %}
social_icons:
  exturl: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Sidebar Blogrolls

You can add blog rolls within sidebar in NexT.

{% tabs blogrolls %}
<!-- tab <code>links</code> -->
Edit the `links` section in {% label primary@theme config file %} and add your favorite links:

{% code lang:yml next/_config.yml %}
links:
  Title1: http://example1.com/
  Title2: http://example2.com/
{% endcode %}
<!-- endtab -->

<!-- tab <code>links_icon</code> -->
By default NexT shows the `link` icon {% btn #,, link %} before `links_title`. The name of icon can be found in {% exturl Font Awesome https://fontawesome.com %} site. You can configure it by editing values in `links_icon` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
links_icon: link
{% endcode %}
<!-- endtab -->

<!-- tab <code>links_title</code> -->
By default NexT uses `Links` as the name of blogroll. You can configure it by editing values in `links_title` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
links_title: Links
{% endcode %}
<!-- endtab -->

<!-- tab <code>links_layout</code> -->
By default all blogrolls are displayed in block. You can configure it to `inline` by editing values in `links_layout` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
links_layout: block
#links_layout: inline
{% endcode %}

<!-- endtab -->

{% endtabs %}

#### Sidebar TOC

{% tabs toc %}
<!-- tab <code>enable</code> -->
By default NexT shows `Table Of Contents (TOC)` in the Sidebar. You can disable it by editing values `toc.enable` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
toc:
  enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>number</code> -->
By default NexT adds list number to TOC automatically. You can disable it by editing values `toc.number` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
toc:
  number: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>wrap</code> -->
If the post header width longer than sidebar width, you can wrap the header words in next lines by editing values `toc.wrap` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
toc:
  wrap: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Sidebar Creative Commons

NexT supports the display of {% exturl Creative Commons 4.0 International License http://creativecommons.org/ %} including `by`, `by-nc`, `by-nc-nd`, `by-nc-sa`, `by-nd`, `by-sa`, `zero`. These licenses allow creators to communicate which rights they reserve, and which rights they waive for the benefit of recipients or other creators.

You can configure it by editing values in `creative_commons` section in {% label primary@theme config file %}.

```yml next/_config.yml
creative_commons:
```

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
The name of footer icon can be founded in {% exturl Font Awesome https://fontawesome.com %} site. `heart` is recommended.

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
By default a canonical link tag is created in Hexo by setting the value `canonical` to `true` in {% label primary@theme config file %} after you have set up your URL `url: http://yoursite.com` in {% label info@site config file %}. More detailed information can be found in {% exturl Consolidate duplicate URLs https://support.google.com/webmasters/answer/139066 %}.

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
