---
title: Advanced Settings
description: NexT User Docs – Advanced Settings
---
Besides normal [Theme Settings](/docs/theme-settings/) and [Third-party Services](/docs/third-party-services/), NexT supports some advanced settings which makes NexT customizable.
Please note that those settings may lead to abnormal behavior if they are wrong. Change them only when you know for what they are.

### Third-party JS Libraries

You can set it to a proper CDN URL, which can make static assets (JavaScript Third-party Library) load faster, now NexT contains following third-party library:

| Name               | Original Link                                                                          | NexT Internal Version |
| ------------------ | -------------------------------------------------------------------------------------- | --------------------- |
| jQuery             | {% exturl jquery.com http://jquery.com %}                                              | 2.1.3                 |
| FontAwesome        | {% exturl fontawesome.io http://fontawesome.io %}                                      | 4.4.0                 |
| VelocityJS         | {% exturl velocityjs.org http://velocityjs.org %}                                      | 1.2.1                 |
| VelocityJS UI Pack | {% exturl velocityjs.org/#uiPack http://velocityjs.org/#uiPack %}                      | 1.2.1                 |
| UAParser.js        | {% exturl faisalman.github.io/ua-parser-js https://faisalman.github.io/ua-parser-js %} | 0.7.9                 |

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
  jquery:

  # Internal version: 2.1.5
  # See: http://fancyapps.com/fancybox/
  fancybox:
  fancybox_css:

  # Internal version: 1.0.6
  # See: https://github.com/ftlabs/fastclick
  fastclick:

  # Internal version: 1.9.7
  # See: https://github.com/tuupola/jquery_lazyload
  lazyload:

  # Internal version: 1.2.1
  # See: http://VelocityJS.org
  velocity:

  # Internal version: 1.2.1
  # See: http://VelocityJS.org
  velocity_ui:

  # Internal version: 0.7.9
  # See: https://faisalman.github.io/ua-parser-js/
  ua_parser:

  # Internal version: 4.6.2
  # See: http://fontawesome.io/
  fontawesome:

  # Internal version: 1
  # https://www.algolia.com
  algolia_instant_js:
  algolia_instant_css:

  # Internal version: 1.0.2
  # See: https://github.com/HubSpot/pace
  # Or use direct links below:
  # pace: //cdn.bootcss.com/pace/1.0.2/pace.min.js
  # pace_css: //cdn.bootcss.com/pace/1.0.2/themes/blue/pace-theme-flash.min.css
  pace:
  pace_css:

  # Internal version: 1.0.0
  # https://github.com/hustcc/canvas-nest.js
  canvas_nest:

  # Internal version: 1.0.0
  # See: https://github.com/theme-next/theme-next-three
  # three: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1.0.0/three.min.js
  # three_waves: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1.0.0/three-waves.min.js
  # canvas_lines: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1.0.0/canvas_lines.min.js
  # canvas_sphere: //cdn.jsdelivr.net/gh/theme-next/theme-next-three@1.0.0/canvas_sphere.min.js
  three:
  three_waves:
  canvas_lines:
  canvas_sphere:

  # Internal version: 1.0.0
  # https://github.com/zproo/canvas-ribbon
  canvas_ribbon:

  # Internal version: 3.3.0
  # https://github.com/ethantw/Han
  Han:

  # Internal version: 3.3.0
  # https://github.com/vinta/pangu.js
  pangu:

  # needMoreShare2
  # https://github.com/revir/need-more-share2
  needmoreshare2_js:
  needmoreshare2_css:

  # bookmark
  # Internal version: 1.0.0
  # https://github.com/theme-next/theme-next-bookmark
  bookmark:

  # reading_progress
  # Internal version: 1.0
  # https://github.com/theme-next/theme-next-reading-progress
  # Example: https://cdn.jsdelivr.net/gh/theme-next/theme-next-reading-progress@1.1/reading_progress.min.js
  reading_progress:

  # valine comment
  # Example: https://cdn.jsdelivr.net/npm/valine@1.1.8/dist/Valine.min.js
  valine:
```
