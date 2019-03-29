---
title: Frequently Asked Questions
description: NexT User Docs – Frequently Asked Questions
---
Here is a collection of frequently asked questions in NexT Issues. If you cannot not find your problem here, please go to [NexT Issues](https://github.com/theme-next/hexo-theme-next/issues) to submit your question.

### How to Set «Read More»

It's a common need to show some part of article in home page and then give a link to full article. NexT gives 3 ways to control how article is shown in home page. In other words, you can use following ways to show summary of articles and a **Read More** button:

1. Use `<!-- more -->` in your article to break your article manually, which is recommended by Hexo. {% label success@Recommended %}
2. Add `description` and set its value to your article summary in [front-matter](https://hexo.io/docs/front-matter).
3. Generate summary automatically by adding following section in {% label primary@theme config file%}:
   ```yml next/_config.yml
   auto_excerpt:
     enable: true
     length: 150
   ```
   By default it cuts `150` characters from article header, you can set the number by yourself.

{% note info %}
It is recommended to use `<!-- more -->` (the first way) which can not only control what you want to show better, but also let Hexo's plugins use it easily.
{% endnote %}

### How to Change Fonts

NexT provided a [Fonts Customization](/docs/theme-settings#Fonts-Customization) funtion. If you still need more customization, following change will cover Fonts Customization function. Edit `source/css/_variables/custom.styl` in NexT theme dir and add two varibles:

```styl source/css/_custom/custom.styl
// Title Font, set it to font family you want.
$font-family-headings = Georgia, sans

// Set it to font family you want.
$font-family-base = "Microsoft YaHei", Verdana, sans-serif

// Code Font.
$code-font-family = "Input Mono", "PT Mono", Consolas, Monaco, Menlo, monospace

// Font size of articles.
$font-size-base = 16px

// Font size of code.
$code-font-size = 13px
```

### How to Change Content Width

By default NexT has following setting of content width:

* 700px → when screen width < 1200px.
* 800px → when screen width >= 1200px.
* 900px → when screen width >= 1600px.
* In mobile / tablet devices it will use responsive width.

You can change content width by editing CSS style file. Edit `source/css/_variables/custom.styl` in {% label primary@theme root directory %} and add varibles:

{% tabs change-content-width %}
<!-- tab Muse / Mist schemes -->
Default variables for both Muse and Mist schemes are located in `source/css/_variables/base.styl` and defined as:

{% code lang:styl next/source/css/_variables/base.styl %}
$content-desktop         = 700px
$content-desktop-large   = 800px
$content-desktop-largest = 900px
{% endcode %}

For example, you want wider content width. You may redefine this variables with percentage width:

{% code lang:styl next/source/css/_variables/custom.styl %}
$content-desktop         = 90%
$content-desktop-large   = 90%
$content-desktop-largest = 90%
{% endcode %}

{% note warning %}
If values will in percents, during opening sidebar will dynamically decrease content width to defined by you percent.
But in standard behaviour, sidebar must displace content from yourself.
To around it, you can to specify content width in `em`:

{% code lang:styl next/source/css/_variables/custom.styl %}
$content-desktop         = 50em
$content-desktop-large   = 55em
$content-desktop-largest = 60em
{% endcode %}
{% endnote %}
<!-- endtab -->

<!-- tab Pisces / Gemini schemes -->
Default variables for Pisces (and Gemini) scheme are located in `source/css/_variables/Pisces.styl` and defined as:

{% code lang:styl next/source/css/_variables/Pisces.styl %}
$content-desktop         = 'calc(100% - %s)' % unit($content-desktop-padding / 2, 'px')
$content-desktop-large   = 1160px
$content-desktop-largest = 73%
{% endcode %}

{% note warning %}
`$content-desktop` value in this schemes is auto-responsive by default. It can be changed to any value too, but for better content visibility recommended to stay it as is.
{% endnote %}

In this schemes content width was defined on maximum and already balanced: if desktop width will be wider – content width will more narrowed for easier reading. But if you want to make more narrow content width in wider desktops, here is example:

{% code lang:styl next/source/css/_variables/custom.styl %}
$content-desktop-large   = 65em
$content-desktop-largest = 65%
{% endcode %}

{% note info %}
In fact, Gemini scheme is just fork of Pisces scheme with some style improvements.
Therefore, almost all part of variables from Pisces scheme are imported to Gemini scheme too.
So, if you want to add any variables or styles to both Pisces and Gemini schemes, need to edit values just in Pisces scheme.
{% endnote %}
<!-- endtab -->
{% endtabs %}

### Wrong Number of Tags/Categories

Because Hexo has cache, sometimes the nubmer in Tags or Categories page is wrong. If you find this question you can re-generate site's content as following:

1. Delete `db.json` in site dir.
2. Run command `hexo clean` in site dir to clean cache.
3. Run command `hexo generate` in site dir to re-generte.

After doing those you can run local server to see if the problem was solved.

### How to Disable Comments on Page

When you enabled comment service like Disqus, all new page will have comment service automatically. If you want to disable it in one page, just add `comments` key to Front-matter and set it's value to `false`. Like following:

```md your-post.md
title: All tags
type: "tags"
comments: false
---
```

### How to Set Number of Articles in Each Page

Set following in {% label info@site config file %}:

```yml next/_config.yml
index_generator:
  per_page: 5

archive_generator:
  per_page: 20
  yearly: true
  monthly: true

tag_generator:
  per_page: 10
```

{% note info %}
`per_page` is the number of articles per page.
{% endnote %}

{% note warning %}
Please note that Hexo 3.2 doesn't allow to have duplicated same options. You'd better check weither {% label info@site config file %} already has same config. If has, make them together.
{% endnote %}

### How to Optimize NexT Theme

NexT doesn't compress HTML, JavaScript and CSS. If you need this, you can try to search 3rd-party libraries in [Hexo plugins section](https://hexo.io/plugins/) or plugins/modules under the [NexT organization](https://github.com/theme-next) link. For example, you can use [hexo-filter-optimize](https://github.com/theme-next/hexo-filter-optimize) plugin.
