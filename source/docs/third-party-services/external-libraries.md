---
title: External Libraries
description: NexT User Docs – Third-party Service Integration – External Libraries
---

### Fancybox

NexT supports the fancybox plugin, which is a jQuery lightbox script for displaying images, videos and more. Touch enabled, responsive and fully customizable.

There is support for old version 2 and new version 3. Please, choose only any one variant, do not need to install both.

{% tabs fancybox %}
<!-- tab Version 2.x -->

{% subtabs fancybox1 %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-fancybox source/lib/fancybox
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: http://fancyapps.com/fancybox/
  fancybox: //cdn.jsdelivr.net/npm/fancybox@2/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@2/dist/css/jquery.fancybox.min.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by editing values `fancybox` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
fancybox: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Version 3.x -->

{% subtabs fancybox2 %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-fancybox3 source/lib/fancybox
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: http://fancyapps.com/fancybox/
  fancybox: //cdn.jsdelivr.net/npm/fancybox@3/dist/js/jquery.fancybox.pack.js
  fancybox_css: //cdn.jsdelivr.net/npm/fancybox@3/dist/css/jquery.fancybox.min.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by editing values `fancybox` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
fancybox: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

{% endtabs %}

### Bookmark

Bookmark is a plugin that allow the users save their reading position. The users could just click the bookmark icon (like 🔖) in left-top of the page to save the position. And when they visit your blog in the next time, they can continue the last reading position by clicking the bookmark icon from the home page.

{% tabs bookmark %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-bookmark.git source/lib/bookmark
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # bookmark
  # https://github.com/theme-next/theme-next-bookmark
  bookmark: //cdn.jsdelivr.net/gh/theme-next/theme-next-bookmark@1/bookmark.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by editing values `bookmark.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Dependencies: https://github.com/theme-next/theme-next-bookmark
bookmark:
  enable: true
  # if auto
  #   - save the reading position when closing the page
  #   - or clicking the bookmark-icon
  # if manual, only save it by clicking the bookmark-icon
  save: auto
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Reading Progress

NexT supports the page scroll reading progress indicator.

{% tabs reading_progress %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-reading-progress source/lib/reading_progress
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # reading_progress
  # https://github.com/theme-next/theme-next-reading-progress
  reading_progress: //cdn.jsdelivr.net/gh/theme-next/theme-next-reading-progress@1.1/reading_progress.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by editing values `reading_progress.enable` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
reading_progress:
  enable: true
  color: "#37c6c0"
  height: 2px
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Progress bar

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
  # See: https://github.com/HubSpot/pace
  pace: //cdn.jsdelivr.net/npm/pace-js@1/pace.min.js
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

{% subtabs pace1 %}
<!-- tab <code>pace</code> -->
After the plugin installed, you can enable it by editing values `pace` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
pace: true
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
* pace-theme-loading-bar
* pace-theme-mac-osx
* pace-theme-minimal


By default NexT uses `pace-theme-minimal` theme. You can configure it by editing values in `pace_theme` section in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
pace_theme: pace-theme-minimal
{% endcode %}

{% note info %}
If you want to use the CDN, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: https://github.com/HubSpot/pace
  pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### FastClick

[FastClick](https://github.com/ftlabs/fastclick) is a simple, easy-to-use library for eliminating the 300ms delay between a physical tap and the firing of a click event on mobile browsers. The aim is to make your application feel less laggy and more responsive while avoiding any interference with your current logic.

{% tabs fastclick %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-fastclick source/lib/fastclick
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: https://github.com/ftlabs/fastclick
  fastclick: https://cdn.jsdelivr.net/npm/fastclick@1/lib/fastclick.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by editing values `fastclick` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Polyfill to remove click delays on browsers with touch UIs.
# Dependencies: https://github.com/theme-next/theme-next-fastclick
fastclick: true
{% endcode %}

<!-- endtab -->
{% endtabs %}

### Jquery Lazyload

[Jquery Lazyload](https://github.com/tuupola/jquery_lazyload) is a modern vanilla JavaScript version of the original Lazy Load plugin. Lazy Load delays loading of images in long web pages. Images outside of viewport will not be loaded before user scrolls to them. This is opposite of image preloading.

{% tabs lazyload %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-jquery-lazyload source/lib/jquery_lazyload
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: https://github.com/tuupola/jquery_lazyload
  lazyload: //cdn.jsdelivr.net/npm/jquery_lazyload@1/jquery.lazyload.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by editing values `lazyload` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Vanilla JavaScript plugin for lazyloading images.
# Dependencies: https://github.com/theme-next/theme-next-jquery-lazyload
lazyload: true
{% endcode %}

<!-- endtab -->
{% endtabs %}

### Quicklink

[Quicklink](https://github.com/GoogleChromeLabs/quicklink) is a JavaScript plugin that faster subsequent page-loads by prefetching in-viewport links during idle time. Chrome, Firefox, Edge are supported without polyfills.

{% tabs quicklink %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-quicklink source/lib/quicklink
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # See: https://github.com/GoogleChromeLabs/quicklink
  quicklink: //cdn.jsdelivr.net/npm/quicklink@1/dist/quicklink.umd.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by editing values `quicklink.enable` to `true` in {% label primary@theme config file %}.

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

### Backgroud JS

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

After the plugin installed, you can enable it by editing values `canvas_nest` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Canvas-nest
# Dependencies: https://github.com/theme-next/theme-next-fastclick
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

After the plugin installed, you can enable it by editing values `canvas_ribbon` to `true` in {% label primary@theme config file %}. You can also configure the ribbon setting by editing values in `canvas_ribbon` section:

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
For now only Pisces Scheme supports canvas ribbon setting under **6.0.x** version or highter.
{% endnote %}

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
  # https://github.com/jjandxa/three_waves
  three_waves: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/three-waves.min.js

  # three_waves
  # https://github.com/jjandxa/canvas_lines
  canvas_lines: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_lines.min.js

  # three_waves
  # https://github.com/jjandxa/canvas_sphere
  canvas_sphere: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_sphere.min.js

  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->

After the plugin installed, you can enable it by editing values `three_waves` or `canvas_lines` or `canvas_sphere` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# three_waves
three_waves: false
# canvas_lines
canvas_lines: false
# canvas_sphere
canvas_sphere: false
{% endcode %}

<!-- endtab -->
{% endtabs %}

### Chinese Typesetting

#### Pangu Autospace Support

[pangu.js](https://github.com/vinta/pangu.js) will automatically insert a blank space between all the Chinese characters and the hexagonal English numeric symbols on the page.

{% tabs pangu %}
<!-- tab Installation → -->
Change dir to NexT directory, and install module to `source/lib` directory.

{% code lang:bash %}
$ cd themes/next
$ git clone https://github.com/theme-next/theme-next-pangu.git source/lib/pangu
{% endcode %}

{% note info %}
If you want to use the CDN instead of clone this repo, then need to **set vendors** in {% label primary@theme config file %}:
{% code lang:yml next/_config.yml %}
vendors:
  ...
  # https://github.com/vinta/pangu.js
  pangu: //cdn.jsdelivr.net/npm/pangu@4/dist/browser/pangu.min.js
  ...
{% endcode %}
{% endnote %}

<!-- endtab -->

<!-- tab NexT Config -->
After the plugin installed, you can enable it by editing values `pangu` to `true` in {% label primary@theme config file %}.

{% code lang:yml hexo/_config.yml %}
# Pangu Support
# Dependencies: https://github.com/theme-next/theme-next-pangu
pangu: true
{% endcode %}
<!-- endtab -->
{% endtabs %}
