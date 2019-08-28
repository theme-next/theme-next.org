---
title: External Libraries
description: NexT User Docs – Third-party Service Integration – External Libraries
---

### PJAX

[Pjax](https://github.com/MoOx/pjax) is a standalone JavaScript module that uses AJAX (XmlHttpRequest) and `pushState()` to deliver a fast browsing experience.

It allows you to completely transform the user experience of standard websites (server-side generated or static ones) to make users feel like they are browsing an app, especially for those with low bandwidth connections.

{% tabs pjax %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-pjax source/lib/pjax
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  pjax: //cdn.jsdelivr.net/gh/theme-next/theme-next-pjax@0/pjax.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `pjax` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Easily enable fast Ajax navigation on your website.
# Dependencies: https://github.com/theme-next/theme-next-pjax
# For moreinformation: https://github.com/MoOx/pjax
pjax: true
{% endcode %}

<!-- endtab -->
{% endtabs %}

### Fancybox

NexT supports the fancybox plugin, which is a jQuery lightbox script for displaying images, videos and more. Touch enabled, responsive and fully customizable.

There is support for old version 2 and new version 3. Please, choose only any one variant, do not need to install both.

{% tabs fancybox %}
<!-- tab Version 2.x -->

{% subtabs fancybox1 %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  fancybox: //cdn.jsdelivr.net/npm/fancybox@2/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@2/dist/css/jquery.fancybox.min.css
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by setting value `fancybox` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
fancybox: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Version 3.x -->

{% subtabs fancybox2 %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  fancybox: //cdn.jsdelivr.net/npm/fancybox@3/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@3/dist/css/jquery.fancybox.min.css
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by setting value `fancybox` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
fancybox: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

### Medium Zoom

[Medium Zoom](https://github.com/francoischalifour/medium-zoom) is a JavaScript library for zooming images like Medium.

{% tabs medium-zoom %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  mediumzoom: https://cdn.jsdelivr.net/npm/medium-zoom@1/dist/medium-zoom.min.js
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `mediumzoom` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# A JavaScript library for zooming images like Medium.
mediumzoom: true
{% endcode %}

{% note warning %}
Do not enable both `fancybox` and `mediumzoom`.
{% endnote %}

<!-- endtab -->
{% endtabs %}

### Lazyload

[Lazyload](https://github.com/ApoorvSaxena/lozad.js) is a modern vanilla JavaScript version of the original Lazy Load plugin. Lazy Load delays loading of images in long web pages. Images outside of viewport will not be loaded before user scrolls to them. This is opposite of image preloading.

{% tabs lazyload %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  lazyload: //cdn.jsdelivr.net/npm/lozad@1/dist/lozad.min.js
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `lazyload` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Vanilla JavaScript plugin for lazyloading images.
lazyload: true
{% endcode %}

<!-- endtab -->
{% endtabs %}

### Pangu Autospace

[pangu.js](https://github.com/vinta/pangu.js) will automatically insert a blank space between all the Chinese characters and the hexagonal English numeric symbols on the page.

{% tabs pangu %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # https://github.com/vinta/pangu.js
  pangu: //cdn.jsdelivr.net/npm/pangu@4/dist/browser/pangu.min.js
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by setting value `pangu` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Pangu Support
pangu: true
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Quicklink

[Quicklink](https://github.com/GoogleChromeLabs/quicklink) is a JavaScript plugin that faster subsequent page-loads by prefetching in-viewport links during idle time. Chrome, Firefox, Edge are supported without polyfills.

{% tabs quicklink %}
<!-- tab Installation → -->
If you want to use a different version from CDN, please follow the instructions below.

You need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  quicklink: //cdn.jsdelivr.net/npm/quicklink@1/dist/quicklink.umd.js
  ...
{% endcode %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `quicklink.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
...
quicklink:
  enable: true
  home: true
  archive: true
  delay: true
  timeout: 3000
  priority: true
  ignores:
...
{% endcode %}

<!-- endtab -->
{% endtabs %}

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

### Progress Bar

Pace will automatically monitor your Ajax requests, event loop lag, document ready state and elements on your page to decide on the progress.

{% tabs pace %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-pace source/lib/pace
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  pace: //cdn.jsdelivr.net/npm/pace-js@1/pace.min.js
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

{% subtabs pace1 %}
<!-- tab <code>pace</code> -->
After the plugin installed, you can enable it by setting value `pace.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
pace:
  enable: true
{% endcode %}
<!-- endtab -->
<!-- tab <code>pace_theme</code> -->
Pace includes a bunch of [themes](http://github.hubspot.com/pace/docs/welcome/) to get you started. Just include the appropriate css file.

* pace-theme-big-counter
* pace-theme-bounce
* pace-theme-barber-shop
* pace-theme-center-atom
* pace-theme-center-circle
* pace-theme-center-radar
* pace-theme-center-simple
* pace-theme-corner-indicator
* pace-theme-fill-left
* pace-theme-flash
* pace-theme-flat-top
* pace-theme-loading-bar
* pace-theme-mac-osx
* pace-theme-material
* pace-theme-minimal

By default NexT uses `minimal` theme (pace-theme-minimal). You can configure it by editing values in `pace.theme` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
pace:
  theme: minimal
{% endcode %}

{% note info %}
If you want to use the CDN, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Backgroud JS

#### JavaScript 3D library

The aim of [JavaScript 3D library](https://github.com/mrdoob/three.js) is to create an easy to use, lightweight, 3D library. The library provides `<canvas>`, `<svg>`, `CSS3D` and `WebGL` renderers.

{% tabs JavaScript-3D %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-three source/lib/three
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # three
  three: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/three.min.js

  # three_waves
  three_waves: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/three-waves.min.js

  # canvas_lines
  canvas_lines: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_lines.min.js

  # canvas_sphere
  canvas_sphere: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_sphere.min.js

  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `three.enable` and `three.three_waves` or `three.canvas_lines` or `three.canvas_sphere` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# JavaScript 3D library.
# Dependencies: https://github.com/theme-next/theme-next-three
three:
  enable: false
  delay: false # Set true to further delay loading
# three_waves
  three_waves: false
# canvas_lines
  canvas_lines: false
# canvas_sphere
  canvas_sphere: false
{% endcode %}

<!-- endtab -->
{% endtabs %}

#### Canvas Nest

[canvas-nest.js](https://github.com/hustcc/canvas-nest.js) is a nest backgroud of website draw on canvas.

{% tabs canvas_nest %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-canvas-nest source/lib/canvas-nest
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # https://github.com/hustcc/canvas-nest.js
  canvas_nest: //cdn.jsdelivr.net/npm/canvas-nest.js@1/dist/canvas-nest.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `canvas_nest` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Canvas-nest
# Dependencies: https://github.com/theme-next/theme-next-canvas-nest
canvas_nest: true
{% endcode %}

<!-- endtab -->
{% endtabs %}

{% note warning %}
For now, it will be loaded both in webs and mobile devices.
{% endnote %}

#### Canvas Ribbon

[canvas-ribbon.js](https://github.com/zproo/canvas-ribbon) is a ribbon backgroud of website draw on canvas.

{% tabs canvas_ribbon %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-canvas-ribbon source/lib/canvas-ribbon
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # https://github.com/zproo/canvas-ribbon
  canvas_ribbon: //cdn.jsdelivr.net/gh/theme-next/theme-next-canvas-ribbon@1/canvas-ribbon.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by setting value `canvas_ribbon` to `true` in {% label primary@theme config file %}. You can also configure the ribbon setting by editing values in `canvas_ribbon` section:

* size: The width of the ribbon.
* alpha: The transparency of the ribbon.
* zIndex: The display level of the ribbon.

{% code lang:yml hexo/_config.yml %}
canvas_ribbon:
  enable: true
  size: 300
  alpha: 0.6
  zIndex: -1
{% endcode %}

<!-- endtab -->
{% endtabs %}

{% note danger %}
For now only Pisces Scheme supports canvas ribbon setting under **6.0.x** version or higher.
{% endnote %}
