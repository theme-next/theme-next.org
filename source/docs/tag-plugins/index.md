---
title: Tag Plugins
description: NexT User Docs – NexT Supported Tags
---
Tag Plugin is a way to make special style contents supported by Hexo. For example, we cannot show a image with custom size in standard Markdown. And then we can use tag plugins to solve it. {% exturl Hexo has a lot of tags https://hexo.io/docs/tag-plugins.html %} which can help user. And Hexo also have interfaces to themes which make themes able to create their own tags. Following tags is provided by NexT:

* [Centered Quote](#Centered-Quote)
* [Group Pictures](#Group-Pictures)
* [Include Raw](#Include-Raw)
* [Full Image](/docs/tag-plugins/full-image/)
* [Note](/docs/tag-plugins/note/)
* [Button](/docs/tag-plugins/button/)
* [ExtURL](/docs/tag-plugins/exturl/)
* [Label](/docs/tag-plugins/label/)
* [Tabs](/docs/tag-plugins/tabs/)

### Centered Quote

This tag will make a quote with two lines before and after it, and text quoted will be centered. When using centered quote, if we have multi-line text, and each line has a different length, the quote won't be symmetrical, so it's recommended to use when only have single line text. For example before article all after article to make a summary.

#### Usage

```html center-quote.js
{% centerquote %}Something{% endcenterquote %}
<!-- Tag Alias -->
{% cq %}Something{% endcq %}
```

#### Example

```md
{% cq %}Elegant in code, simple in core{% endcq %}
```

{% cq %}Elegant in code, simple in core{% endcq %}

### Include Raw

This tag include any raw content into your posts. Path is relative to your site source directory.

#### Usage

```html include-raw.js
{% include_raw '_data/path/to/file.html' %}
```

#### Example

Let's create `include-raw.html` file in `_data` directory under {% label info@site root directory %} with following content:

```html
Any <strong>raw content</strong> may be included with this tag.
```

Then in any post we can use this content with `include_raw` tag:

```md
{% include_raw '_data/path/to/include-raw.html' %}
```

{% include_raw '_data/include-raw.html' %}

### Group Pictures
