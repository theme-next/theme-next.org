---
title: External URL
description: NexT User Docs – NexT Supported Tags – External URL
---
External URL with BASE64 encrypt & decrypt which provide nonsense for search engines to `<a>` tags.

### Description

Search engines scan `<a>` tag with hight priority. You may add `external` / `nofollow` / `noopener` / `noreferrer` or any similar tricks, in any case all external links from your site will be indexed on your site. But here exists another trick: crawlers doesn't reproduce any javascript – this do clients on their local devices.
That tag give the way to set any external link without `<a>` tag. So, some crawlers like Yandex will not give away links weight from your site and this very useful for SEO. This tag perform:

* Replaces `a` HTML tag with `span` HTML tag.
* Crypt & Decrypt URL with BASE64. User cannot see base64 format in browser src for this link, but he will see tooltip where this URL pointed to or will be shown custom title which can be specified in `title` tag parameter.
* Backlinks by this tag will not be scanned by any monitoring. It's like you open new link with javascript at new tab.
* Works on mobile devices too, yep.

{% note warning %}
This tag was created exceptionally for better SEO-optimization. Any attempts to confuse end-user by phishing links not allowed!
{% endnote %}

### Settings
Just one setting must be turned on under the `Tags Settings` section in {% label primary@theme config file %}:

```yml next/_config.yml
exturl: true
```

### Usage

```md exturl.js
{% exturl text url [title] %}
<!-- Tag Alias -->
{% extlink text url [title] %}

text    : Main text of the link.
url     : Full URL of external source.
[title] : Tooltip at mouseover.
          If 'title' not specified, 'url' will be used as title.
          Optional parameter.
```

### Examples

```md
Welcome to {% exturl Theme NexT Organization https://github.com/theme-next %}!
If you want new feature or want to report a bug, feel free to {% exturl open an issue https://github.com/theme-next/hexo-theme-next/issues/new Open new issue in NexT repository %}.
And if you have coding skills, NexT will be glad for your {% exturl pull request https://github.com/theme-next/hexo-theme-next/pulls "See all current pulls" %}.
```

Welcome to {% exturl Theme NexT Organization! https://github.com/theme-next %}
If you want new feature or want to report a bug, feel free to {% exturl open an issue. https://github.com/theme-next/hexo-theme-next/issues/new Open new issue in NexT repository %}
And if you have coding skills, NexT will be glad for your {% exturl pull request. https://github.com/theme-next/hexo-theme-next/pulls "See all current pulls" %}