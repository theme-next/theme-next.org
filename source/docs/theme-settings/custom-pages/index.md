---
title: Custom Pages
description: NexT User Docs – Theme Settings - Custom Pages
---
### Custom Page Support

Next allows users to add custom pages in menu.

{% tabs adding-custom-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Use `hexo new page custom_name` to create a new `custom_name` page:

    $ cd your-hexo-site
    $ hexo new page custom_name

<!-- endtab -->

<!-- tab Setting Front-matter Values → -->
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in [Front-matter](https://hexo.io/docs/front-matter.html). You can also add contents in `custom_name/index.md` if you like.

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
Please read [Hexo's Docs of Categories & Tags](https://hexo.io/docs/front-matter.html#Categories-amp-Tags) to know how to add tags or categories for articles.
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
Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Settings Front-matter values and more detailed can be found in [Front-matter](https://hexo.io/docs/front-matter.html). You can also add contents in `schedule/index.md` if you like.

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
Login to [Google developers](https://console.developers.google.com/flows/enableapi?apiid=calendar) and add Google Calendar API, you will get your calendar ID and API KEY. [More detailed documentation](https://developers.google.com/calendar/quickstart/js)

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

By default NexT shows the cheers characters from `ok` to `excellent` according to the numbers of your posts. You can disable it by editing values `cheers` to `false` in {% label primary@theme config file %}.

```yml next/_config.yml
cheers: true
```

#### Custom 404 Page

{% tabs custom-404-page %}
<!-- tab Adding New Page → -->
In your terminal emulator, change to Hexo site dir. Create a new folder called `404`, then create a new page in it:

    $ cd your-hexo-site
    $ mkdir 404
    $ touch 404/index.md

<!-- endtab -->

<!-- tab Editting Page → -->
If you would like to enable `commonweal 404`(A service provided by Tencent in China), Edit `404/index.md` like this:
```
---
title: 404
date: 1970-01-01 00:00:00
---

<script src="//qzonestyle.gtimg.cn/qzone/hybrid/app/404/search_children.js"
        charset="utf-8" homePageUrl="/" homePageName="Back to home">
</script>
```
You can also add any content you want to it.
<!-- endtab -->

<!-- tab Editting Menu → -->
Add `404` to `menu` by editing {% label primary@theme config file %}:
{% codeblock lang:yml next/_config.yml %}
menu:
  home: / || home
  archives: /archives/ || archive
  schedule: /schedule/ || calendar
  commonweal: /404/ || heartbeat
{% endcodeblock %}
<!-- endtab -->
{% endtabs %}
