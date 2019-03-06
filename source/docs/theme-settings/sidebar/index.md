---
title: Sidebar
description: NexT User Docs – Theme Settings – Sidebar
---
### Sidebar Setting

#### Sidebar Style

By default sidebar only shows in posts (have a table of content), and is placed in left side. You can change it by editing values under `sidebar` setting in {% label primary@theme config file %}.

Sidebar has several options, but for now we will consider `position`, `width`, `display`, `offset`, `onmobile` and `dimmer` options.

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

<!-- tab <code>onmobile</code> -->
Set the value `sidebar.onmobile` to `true` to enable sidebar on narrow view for mobile device as following:

{% code lang:yml next/_config.yml %}
sidebar:
  onmobile: true
{% endcode %}

{% note danger %}
For now only Muse / Mist Schemes supports `onmobile` setting under **6.0.x** version or highter.
{% endnote %}
<!-- endtab -->

<!-- tab <code>dimmer</code> -->
Set the value `sidebar.dimmer` to `true` to enable the feature: click any blank part of the page to close sidebar.

{% code lang:yml next/_config.yml %}
sidebar:
  dimmer: true
{% endcode %}

{% note danger %}
For now only Muse / Mist Schemes supports `dimmer` setting under **7.0.x** version or highter.
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
Set the value `exturl` to `true` to [encrypt social links](https://www.base64encode.org) in `social_icons` section in {% label primary@theme config file %}. For example, encoded GitHub link: `GitHub: aHR0cHM6Ly9naXRodWIuY29tL3RoZW1lLW5leHQ= || github`.

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
By default NexT shows the `link` icon {% btn #,, link %} before `links_title`. The name of icon can be found in [Font Awesome](https://fontawesome.com) site. You can configure it by editing values in `links_icon` section in {% label primary@theme config file %}.

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

<!-- tab <code>max_depth</code> -->
By default maximum heading depth of generated toc is 6. You can set it by editing values `toc.max_depth` to `another number` in {% label primary@theme config file %}.
{% code lang:yml next/_config.yml %}
toc:
  max_depth: 3
{% endcode %}
<!-- endtab -->

{% endtabs %}
