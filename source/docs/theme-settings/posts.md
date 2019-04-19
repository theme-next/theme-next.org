---
title: Posts
description: NexT User Docs – Theme Settings – Posts
---
### Post Settings

#### Text Align

NexT allows to customize the text alignment in the posts. The `text-align` CSS property sets the horizontal alignment of a block element or table-cell box.

| Values         | Effect                                                                                                                                                                 |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `start`        | The same as `left` if direction is left-to-right and `right` if direction is right-to-left.                                                                            |
| `end`          | The same as `right` if direction is left-to-right and `left` if direction is right-to-left.                                                                            |
| `left`         | The inline contents are aligned to the left edge of the line box.                                                                                                      |
| `right`        | The inline contents are aligned to the right edge of the line box.                                                                                                     |
| `center`       | The inline contents are centered within the line box.                                                                                                                  |
| `justify`      | The inline contents are justified. Text should be spaced to line up its left and right edges to the left and right edges of the line box, except for the last line.    |
| `justify-all`  | Same as `justify`, but also forces the last line to be justified.                                                                                                      |
| `match-parent` | Similar to `inherit`, but the values `start` and `end` are calculated according to the parent's direction and are replaced by the appropriate `left` or `right` value. |

{% code lang:yml next/_config.yml %}
# Set the text alignment in the posts.
text_align:
  # Available values: start | end | left | right | center | justify | justify-all | match-parent
  desktop: justify
  mobile: justify
{% endcode %}

#### Page Scroll

{% tabs page-scroll %}
<!-- tab <code>scroll_to_more</code> -->
By default NexT scrolls page automatically to section which is under <!-- more --> mark. You can disable it by editing value `scroll_to_more` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
scroll_to_more: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>save_scroll</code> -->
If you want to save page scroll position automatically in cookies, you can enable it by editing value `save_scroll` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
save_scroll: true
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Preamble Text

It's a common need to show some part of article in home page and then give a link to full article. NexT gives 3 ways to control how article is shown in home page. In other words, you can use following ways to show summary of articles and a **Read More** button.

{% tabs preamble %}
<!-- tab <code>excerpt_description</code> -->
If you have added `description` and set its value to your article summary in [front-matter](https://hexo.io/docs/front-matter), NexT excerpts `description` as preamble text in homepage by default. Without `description`, the full contents would be the preamble text in homepage.

You can disable it by editing value `excerpt_description` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
excerpt_description: true
{% endcode %}

<!-- endtab -->

<!-- tab {% label success@Tag more %} -->
Use `<!-- more -->` in your article to break your article manually, which is recommended by Hexo.

<!-- endtab -->

<!-- tab {% label warning@auto_excerpt %} -->
Next would use `150` characters from article header automatically as preamble text by editing value `auto_excerpt.enable` to `true`.

You can configure it by editing value in `auto_excerpt` section in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
auto_excerpt:
  enable: true
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
By default NexT shows the description text of post meta. You can disable it by editing value `post_meta.item_text` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  item_text: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>created_at</code> -->
By default NexT shows the post created date in post meta section and created time in popup. You can disable it by editing value `post_meta.created_at` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  created_at: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>updated_at</code> -->

{% subtabs postmeta1 %}
<!-- tab <code>enable</code> -->
By default NexT shows the post updated date in post meta section and updated time in popup. You can disable it by editing value `post_meta.updated_at.enable` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  updated_at:
    enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>another_day</code> -->
By default, if updated/edited date is the same as created date, edited time would be displayed in popup message. You can disable it by editing value `post_meta.updated_at.another_day` to `false` in {% label primary@theme config file %}.
In other words:
* If true, show updated date label only if `updated date` is different from `created date` (post edited in another day than was created).
* And if post was edited in same day as created, edited time will show in popup title under created time label.
* If false show anyway, but if post edited in same day, show only edited time.

{% code lang:yml next/_config.yml %}
post_meta:
  updated_at:
    another_day: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab <code>categories</code> -->
By default NexT shows the post categorie in post meta section. You can disable it by editing value `post_meta.categories` to `false` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
post_meta:
  categories: true
{% endcode %}
<!-- endtab -->

{% endtabs %}

#### Post Wordcount

3rd-party plugin [`hexo-wordcount`](https://github.com/willin/hexo-wordcount) was replaced by [`hexo-symbols-count-time`](https://github.com/theme-next/hexo-symbols-count-time) in 6.x versions because `hexo-symbols-count-time` no have any external nodejs dependencies, no have [language filter](https://github.com/willin/hexo-wordcount/issues/7) which causes better performance on speed at site generation.

{% tabs wordcount %}
<!-- tab Installation → -->
Install `hexo-symbols-count-time` by run following command in {% label info@site root dir %}:

    $ npm install hexo-symbols-count-time --save

<!-- endtab -->

<!-- tab Hexo Config → -->
Activate this plugin in {% label info@site config file %} by enabled any option:

{% subtabs wordcount1 %}
<!-- tab <code>symbols</code> -->
By default NexT shows the number of post words in post meta section. You can disable it by editing value `symbols_count_time.symbols` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  symbols: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>time</code> -->
By default NexT shows the estimated reading time of post in post meta section. You can disable it by editing value `symbols_count_time.time` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  time: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>total_symbols</code> -->
By default NexT shows the number of all posts words in footer section. You can disable it by editing value `symbols_count_time.total_symbols` to `false` in {% label info@site config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  total_symbols: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>total_time</code> -->
By default NexT shows the estimated reading time of all posts in footer section. You can disable it by editing value `symbols_count_time.total_time` to `false` in {% label info@site config file %}.
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
By default NexT shows the words counts and estimated reading time in a separated line. You can add them into one line by editing value `symbols_count_time.separated_meta` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  separated_meta: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>item_text_post</code> -->
By default NexT shows the text description of the words counts and estimated reading time in post meta section. You can disable it by editing value `symbols_count_time.item_text_post` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  item_text_post: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>item_text_total</code> -->
By default NexT doesn't shows the text description of the words counts and estimated reading time in footer section. You can enable it by editing value `symbols_count_time.item_text_total` to `false` in {% label primary@theme config file %}.
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  item_text_total: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>awl</code> -->
`awl` means the average Word Length (chars count in word). You can check this [here](https://charactercounttool.com/).
{% code lang:yml hexo/_config.yml %}
symbols_count_time:
  awl: 4
{% endcode %}
<!-- endtab -->

<!-- tab <code>wpm</code> -->
`wpm` means the average words per minute. You can check this [here](https://wordcounter.net/).
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
You can enable it by editing value `copy_button.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
codeblock:
  copy_button:
    enable: true
{% endcode %}
<!-- endtab -->
<!-- tab <code>show_result</code> -->
By default NexT doesn't show copy results of the copy-and-paste functionality. You can also enable it by editing value `copy_button.show_result` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
codeblock:
  copy_button:
    show_result: true
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

NexT uses [Tomorrow Theme](https://github.com/chriskempson/tomorrow-theme) to support code highlight.
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

#### Post End Tag

Add an end tag at the end of the post.

You can enable it by editing value `post_end_tag.enable` to `true` in theme config file.

#### WeChat Subscribing

Show your WeChat public account QRcode after each article, subscribing blog by simply scanning.

1. Download your QRcode from WeChat Public Platform, and save it under `source/uploads/` {% label info@site directory %}.
2. Edit {% label primary@theme config file %} like following:

  ```yml next/_config.yml
  wechat_subscriber:
    enable: true
    qcode: /uploads/wechat-qcode.jpg
    description: Welcome to scan the WeChat Public Account QRcode and subscribe my blog!
  ```

#### Reward (Donate)

More and more platform (WeChat public accounts, Weibo, Jianshu, Baidu Reward) supports reward (donate). To catch paid reading trends, we added reward feature, supports WeChat Pay, Alipay and Bitcoin. What you need is:

1. Get your WeChat Pay / Alipay / Bitcoin receive money QRcode image(s) and put into `source/images` under {% label primary@theme directory %} or upload it(them) to an image cloud to get the absolute HTTP address(es).
2. Set needed values in  {% label primary@theme config file %}:

   ```yml next/_config.yml
   # Reward (Donate)
   reward_settings:
     # If true, reward would be displayed in every article by default.
     # You can show or hide reward in a specific article throuth `reward: true | false` in Front Matter.
     enable: true
     animation: false
     #comment: Donate comment here
   
   reward:
     wechatpay: /images/wechatpay.png
     alipay: /images/alipay.png
     bitcoin: /images/bitcoin.png
   ```

You can also add QRcode of other platforms, e.g.
```yml next/_config.yml
paypal: /images/paypal.png
monero: /images/monero.png
```

#### Related popular posts (REDOCS)

NexT supports the related posts functionality according to [hexo-related-popular-posts](https://github.com/tea3/hexo-related-popular-posts).

{% tabs related_posts %}
<!-- tab <code>enable</code> -->
You can enable it by editing value `related_posts.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>title</code> -->
By default NexT uses 'Related Posts' as title by default. You can configure it by editing value in `related_posts.title` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  title:
{% endcode %}
<!-- endtab -->

<!-- tab <code>display_in_home</code> -->
By default NexT doesn't show the related posts in homepage. You can enable it by editing value `related_posts.display_in_home` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
related_posts:
  display_in_home: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>params</code> -->
By default NexT shows up to 5 related posts and their titles without any date, image and excerpt. You can change the default behavior by editing values of `related_posts.params` in {% label primary@theme config file %}.

{% subtabs related_posts1 %}
<!-- tab <code>maxCount</code> -->
Maximum count of a list, change it by yourself.

{% code lang:yml hexo/_config.yml %}
related_posts:
  params:
    maxCount: 5
{% endcode %}
<!-- endtab -->

<!-- tab <code>PPMixingRate</code> -->
Mixing ratio of popular posts and related posts.

{% code lang:yml hexo/_config.yml %}
related_posts:
  params:
    #PPMixingRate: 0.0
{% endcode %}
<!-- endtab -->

<!-- tab <code>isDate</code> -->
Uncomment and set true to display dates of related post.

{% code lang:yml hexo/_config.yml %}
related_posts:
  params:
    isDate: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>isImage</code> -->
Uncomment and set true to display images of related posts.

{% code lang:yml hexo/_config.yml %}
related_posts:
  params:
    isImage: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>isExcerpt</code> -->
Uncomment and set true to display excerpts of related posts.

{% code lang:yml hexo/_config.yml %}
related_posts:
  params:
    isExcerpt: true
{% endcode %}
<!-- endtab -->

{% endsubtabs %}
<!-- endtab -->
{% endtabs %}

#### Post Edit
NexT supports the edit functionality of your posts.

{% tabs post_edit %}
<!-- tab <code>enable</code> -->
You can enable it by editing value `post_edit.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
post_edit:
  enable: true
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
