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
| jQuery             | [jquery.com](http://jquery.com)                                              | 3.4.1                 |
| FontAwesome        | [fontawesome.io](http://fontawesome.io)                                      | 4.7.0                 |
| VelocityJS         | [velocityjs.org](http://velocityjs.org)                                      | 1.2.1                 |
| VelocityJS UI Pack | [velocityjs.org/#uiPack](http://velocityjs.org/#uiPack)                      | 1.2.1                 |

This feature located under `vendors` section in {% label primary@theme config file %}.
`_internal: lib` is used to tell NexT where internal library is located and you shouldn't change this in most cases.
And next part is config of each library; if you leave it blank NexT will use internal version. Each config is in format of `libname: CDN URL`. For example:

```yml
jquery: //cdn.jsdelivr.net/jquery/3.4.1/jquery.min.js
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

  # Internal version: 3.4.1
  # Example:
  # jquery: //cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js
  # jquery: //cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js
  jquery: //cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js

  # Internal version: 2.1.5 & 3.5.7
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

  # Internal version: 4.7.0
  # See: https://fontawesome.com
  # Example:
  # fontawesome: //cdn.jsdelivr.net/npm/font-awesome@4/css/font-awesome.min.css
  # fontawesome: //cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css
  fontawesome: //cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css

  # Internal version: 2.10.4
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

  # Internal version: 4.0.7
  # See: https://github.com/vinta/pangu.js
  # Example:
  # pangu: //cdn.jsdelivr.net/npm/pangu@4/dist/browser/pangu.min.js
  # pangu: //cdnjs.cloudflare.com/ajax/libs/pangu/4.0.7/pangu.min.js
  pangu: //cdn.jsdelivr.net/npm/pangu/dist/browser/pangu.min.js

  # Internal version: 1.0.0
  # See: https://github.com/GoogleChromeLabs/quicklink
  # Example:
  # quicklink: //cdn.jsdelivr.net/npm/quicklink@1/dist/quicklink.umd.js
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
  valine: //cdn.jsdelivr.net/npm/valine/dist/Valine.min.js

  # gitalk & js-md5
  # See: https://github.com/gitalk/gitalk, https://github.com/emn178/js-md5
  # Example:
  # gitalk_js: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js
  # gitalk_css: //cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css
  # md5: //cdn.jsdelivr.net/npm/js-md5@0/src/md5.min.js
  gitalk_js: //cdn.jsdelivr.net/npm/gitalk/dist/gitalk.min.js
  gitalk_css: //cdn.jsdelivr.net/npm/gitalk/dist/gitalk.css
  md5: //cdn.jsdelivr.net/npm/js-md5/src/md5.min.js

  # likely
  # See: https://github.com/ilyabirman/Likely
  # Example:
  # likely_js: //cdn.jsdelivr.net/npm/ilyabirman-likely@2/release/likely.js
  # likely_css: //cdn.jsdelivr.net/npm/ilyabirman-likely@2/release/likely.css
  likely_js: //cdn.jsdelivr.net/npm/ilyabirman-likely/release/likely.js
  likely_css: //cdn.jsdelivr.net/npm/ilyabirman-likely/release/likely.css

  # DisqusJS
  # See: https://github.com/SukkaW/DisqusJS
  # Example:
  # disqusjs_js: //cdn.jsdelivr.net/npm/disqusjs@1/dist/disqus.js
  # disqusjs_css: //cdn.jsdelivr.net/npm/disqusjs@1/dist/disqusjs.css
  disqusjs_js: //cdn.jsdelivr.net/npm/disqusjs/dist/disqus.js
  disqusjs_css: //cdn.jsdelivr.net/npm/disqusjs/dist/disqusjs.css
```

### Injects

We extended the hexo filter and added `theme_inject`, so user can add the desired custom content to any injection point.

#### Synopsis

```js
hexo.extend.filter.register('theme_inject', function(injects) {
  // ...
});
```

A injects argument will get passed into the function, so we can use it add custom code in `injectPoint` as below.

For inject view: 
```js
// note: the name must be unique
// locals and options is the same as partial https://hexo.io/docs/helpers#partial
injects.[injectPoint].file(name, filePath, [locals], [options]);
injects.[injectPoint].raw(name, raw, [locals], options]);
```

For inject style: 
```js
injects.[injectPoint].push(styleFile);
```

These are many `injectPoint`, defined in `scripts/injects-point.js`
```js
module.exports = {
  views: ['head', 'header', 'sidebar', 'postMeta', 'postBodyEnd', 'footer', 'bodyEnd'],
  styles: ['variable', 'mixin', 'style']
};
```

#### Examples

**One:** load a custom script. We can add it in `bodyEnd`.

```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.bodyEnd.raw('load-custom-js', '<script src="js-path-or-cdn.js"></script>', {}, {cache: true});
});
```

**Two:** add a custom `my-favourite-food.swig` to sidebar. 

Step1: you should create `my-favourite-food.swig` in any path(e.g. `source/_data/`) as below. You can get variable from `hexo` or `local` defined in filter.
```html
{% for food in foods %}
  <div>{{food}}</div>
{% endfor %}
```

Step2: add filter to load it.
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.sidebar.raw('my-favourite-food', 'source/_data/my-favourite-food.swig', {
    foods: ['apple', 'orange']
  });
});
```

**Three:** want to have big header, put `big-header.styl` to NexT. 

Of course, you need to create this file first(e.g. `source/_data/big-header.styl`).
```css
h1 {
  font-size: 2rem;
}
```

And then add it in filter.
```js
hexo.extend.filter.register('theme_inject', function(injects) {
  injects.style.push('source/_data/big-header.styl');
});
```

#### Plugin

We also support hexo's plugin system, which makes it easy to extend functions without modifying the source code of the core module. You can see <https://hexo.io/docs/plugins.html#Plugin> to learn how to create a plugin.

But you have to note path, it must absolute or relative to `hexo_dir`.
