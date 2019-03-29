---
title: Advanced Settings
description: NexT User Docs – Advanced Settings
---
Besides normal [Theme Settings](/docs/theme-settings/) and [Third-party Services](/docs/third-party-services/), NexT supports some advanced settings which makes NexT customizable.
Please note that those settings may lead to abnormal behavior if they are wrong. Change them only when you know for what they are.

### Third-party JS Libraries

You can set it to a proper CDN URL, which can make static assets (JavaScript Third-party Library) load faster, now NexT contains following third-party library:

| Name               | Original Link                                                                | NexT Internal Version |
| ------------------ | ---------------------------------------------------------------------------- | --------------------- |
| jQuery             | [jquery.com](http://jquery.com)                                              | 2.1.3                 |
| FontAwesome        | [fontawesome.io](http://fontawesome.io)                                      | 4.4.0                 |
| VelocityJS         | [velocityjs.org](http://velocityjs.org)                                      | 1.2.1                 |
| VelocityJS UI Pack | [velocityjs.org/#uiPack](http://velocityjs.org/#uiPack)                      | 1.2.1                 |
| UAParser.js        | [faisalman.github.io/ua-parser-js](https://faisalman.github.io/ua-parser-js) | 0.7.9                 |

This feature located under `vendors` section in {% label primary@theme config file %}.
`_internal: lib` is used to tell NexT where internal library is located and you shouldn't change this in most cases.
And next part is config of each library; if you leave it blank NexT will use internal version. Each config is in format of `libname: CDN URL`. For example:

```yml
jquery: //cdn.jsdelivr.net/jquery/2.1.3/jquery.min.js
```

«Internal version» is the version that NexT tested and uses. And if you need other versions you need to test them first.

```yml next/_config.yml
# Script Vendors.
# Set a CDN address for the vendor you want to customize.
# For example
#    jquery: https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js
# Be aware that you should use the same version as internal ones to avoid potential problems.
# Please use the https protocol of CDN files when you enable https on your site.
vendors:
  # Internal path prefix. Please do not edit it.
  _internal: lib

  # Internal version: 2.1.3
  # Example:
  # jquery: //cdn.jsdelivr.net/npm/jquery@2/dist/jquery.min.js
  # jquery: //cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js
  jquery: //cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js

  # Internal version: 2.1.5
  # See: https://fancyapps.com/fancybox
  # Example:
  # fancybox: //cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.js
  # fancybox: //cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.6/jquery.fancybox.min.js
  # fancybox_css: //cdn.jsdelivr.net/gh/fancyapps/fancybox@3/dist/jquery.fancybox.min.css
  # fancybox_css: //cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.6/jquery.fancybox.min.css
  fancybox: //cdn.jsdelivr.net/gh/fancyapps/fancybox/dist/jquery.fancybox.min.js
  fancybox_css: //cdn.jsdelivr.net/gh/fancyapps/fancybox/dist/jquery.fancybox.min.css

  # Internal version: 1.0.6
  # See: https://github.com/ftlabs/fastclick
  # Example:
  # fastclick: //cdn.jsdelivr.net/npm/fastclick@1/lib/fastclick.min.js
  # fastclick: //cdnjs.cloudflare.com/ajax/libs/fastclick/1.0.6/fastclick.min.js
  fastclick: //cdn.jsdelivr.net/npm/fastclick/lib/fastclick.min.js

  # Internal version: 1.9.7
  # See: https://github.com/tuupola/jquery_lazyload
  # Example:
  # lazyload: //cdn.jsdelivr.net/npm/jquery-lazyload@1/jquery.lazyload.min.js
  # lazyload: //cdnjs.cloudflare.com/ajax/libs/jquery_lazyload/1.9.7/jquery.lazyload.min.js
  lazyload: //cdn.jsdelivr.net/npm/jquery-lazyload/jquery.lazyload.min.js

  # Internal version: 1.2.1
  # See: http://velocityjs.org
  # Example:
  # velocity: //cdn.jsdelivr.net/npm/velocity-animate@1/velocity.min.js
  # velocity: //cdnjs.cloudflare.com/ajax/libs/velocity/1.2.1/velocity.min.js
  # velocity_ui: //cdn.jsdelivr.net/npm/velocity-animate@1/velocity.ui.min.js
  # velocity_ui: //cdnjs.cloudflare.com/ajax/libs/velocity/1.2.1/velocity.ui.min.js
  velocity: //cdn.jsdelivr.net/npm/velocity-animate/velocity.min.js
  velocity_ui: //cdn.jsdelivr.net/npm/velocity-animate/velocity.ui.min.js

  # Internal version: 0.7.9
  # See: https://faisalman.github.io/ua-parser-js
  # Example:
  # ua_parser: //cdn.jsdelivr.net/npm/ua-parser-js@0/src/ua-parser.min.js
  # ua_parser: //cdnjs.cloudflare.com/ajax/libs/UAParser.js/0.7.9/ua-parser.min.js
  ua_parser: //cdn.jsdelivr.net/npm/ua-parser-js/src/ua-parser.min.js

  # Internal version: 4.6.2
  # See: https://fontawesome.com
  # Example:
  # fontawesome: //cdn.jsdelivr.net/npm/font-awesome@4/css/font-awesome.min.css
  # fontawesome: //cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css
  fontawesome: //cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css

  # Internal version: 2.4.1
  # See: https://www.algolia.com
  # Example:
  # algolia_instant_js: //cdn.jsdelivr.net/npm/instantsearch.js@2/dist/instantsearch.js
  # algolia_instant_css: //cdn.jsdelivr.net/npm/instantsearch.js@2/dist/instantsearch.min.css
  algolia_instant_js:
  algolia_instant_css:

  # Internal version: 1.0.2
  # See: https://github.com/HubSpot/pace
  # Example:
  # pace: //cdn.jsdelivr.net/npm/pace-js@1/pace.min.js
  # pace: //cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js
  # pace_css: //cdn.jsdelivr.net/npm/pace-js@1/themes/blue/pace-theme-minimal.css
  # pace_css: //cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/blue/pace-theme-minimal.min.css
  pace:
  pace_css:

  # Internal version: 1.0.0
  # See: https://github.com/theme-next/theme-next-canvas-nest
  # Example:
  # canvas_nest: //cdn.jsdelivr.net/gh/theme-next/theme-next-canvas-nest@1/canvas-nest.min.js
  # canvas_nest_nomobile: //cdn.jsdelivr.net/gh/theme-next/theme-next-canvas-nest@1/canvas-nest-nomobile.min.js
  canvas_nest:
  canvas_nest_nomobile:

  # Internal version: 1.0.0
  # See: https://github.com/theme-next/theme-next-three
  # Example:
  # three: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/three.min.js
  # three_waves: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/three-waves.min.js
  # canvas_lines: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_lines.min.js
  # canvas_sphere: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1/canvas_sphere.min.js
  three:
  three_waves:
  canvas_lines:
  canvas_sphere:

  # Internal version: 1.0.0
  # See: https://github.com/zproo/canvas-ribbon
  # Example:
  # canvas_ribbon: //cdn.jsdelivr.net/gh/theme-next/theme-next-canvas-ribbon@1/canvas-ribbon.js
  canvas_ribbon:

  # Internal version: 3.3.0
  # See: https://github.com/ethantw/Han
  # Example:
  # han: //cdn.jsdelivr.net/npm/han-css@3/dist/han.min.css
  # han: //cdnjs.cloudflare.com/ajax/libs/Han/3.3.0/han.min.css
  han: //cdn.jsdelivr.net/npm/han-css/dist/han.min.css

  # Internal version: 3.3.0
  # See: https://github.com/vinta/pangu.js
  # Example:
  # pangu: //cdn.jsdelivr.net/npm/pangu@3/dist/browser/pangu.min.js
  # pangu: //cdnjs.cloudflare.com/ajax/libs/pangu/3.3.0/pangu.min.js
  pangu: //cdn.jsdelivr.net/npm/pangu/dist/browser/pangu.min.js

  # See: https://github.com/GoogleChromeLabs/quicklink
  # Example:
  # quicklink: //cdn.jsdelivr.net/npm/quicklink@1.0.0/dist/quicklink.umd.js
  quicklink:

  # Internal version: 1.0.0
  # See: https://github.com/revir/need-more-share2
  # Example:
  # needmoreshare2_js: //cdn.jsdelivr.net/gh/theme-next/theme-next-needmoreshare2@1/needsharebutton.min.js
  # needmoreshare2_css: //cdn.jsdelivr.net/gh/theme-next/theme-next-needmoreshare2@1/needsharebutton.min.css
  needmoreshare2_js:
  needmoreshare2_css:

  # Internal version: 1.0.0
  # See: https://github.com/theme-next/theme-next-bookmark
  # Example:
  # bookmark: //cdn.jsdelivr.net/gh/theme-next/theme-next-bookmark@1/bookmark.min.js
  bookmark:

  # Internal version: 1.1
  # See: https://github.com/theme-next/theme-next-reading-progress
  # Example:
  # reading_progress: //cdn.jsdelivr.net/gh/theme-next/theme-next-reading-progress@1/reading_progress.min.js
  reading_progress: //cdn.jsdelivr.net/gh/theme-next/theme-next-reading-progress/reading_progress.min.js

  # leancloud-storage
  # See: https://www.npmjs.com/package/leancloud-storage
  # Example:
  # leancloud: //cdn.jsdelivr.net/npm/leancloud-storage@3/dist/av-min.js
  leancloud: //cdn.jsdelivr.net/npm/leancloud-storage/dist/av-min.js

  # valine
  # See: https://github.com/xCss/Valine
  # Example:
  # valine: //cdn.jsdelivr.net/npm/valine@1/dist/Valine.min.js
  # valine: //cdnjs.cloudflare.com/ajax/libs/valine/1.3.4/Valine.min.js
  valine: /lib/Valine.min.js

  # gitalk
  # See: https://github.com/gitalk/gitalk
  # Example:
  # gitalk_js: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js
  # gitalk_css: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css
  gitalk_js:
  gitalk_css:

  # js-md5
  # See: https://github.com/emn178/js-md5
  # Example:
  # md5: //cdn.jsdelivr.net/npm/js-md5@0/src/md5.min.js
  md5:
```
