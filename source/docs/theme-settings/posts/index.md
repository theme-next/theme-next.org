---
title: Posts
description: NexT User Docs – Theme Settings – Posts
---
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
<!-- tab <code>style</code> -->
With `style` option, you can change your copy button style.
There are two style available currently: `default`(Just leave it empty) and `flat`.

{% code lang:yml hexo/_config.yml %}
codeblock:
  copy_button:
    style: flat
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
