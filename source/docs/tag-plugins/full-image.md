---
title: Full Image (Featured Image)
description: NexT User Docs – NexT Supported Tags – Full Image
---

Using this tag will add meta data `ImageObject` to make your image featured. It's mean search engines/social services will display your article in their services with this image as thumbnail by default.

### Usage

{% note warning %}
From version {% label primary@6.4.0 %} this tag supported 2 additional parameters:

* Lazy load → `lazy`
* Image size → `size`

If you are using a lower version, this parameters will be ignored.
{% endnote %}

```md full-image.js
{% fullimage /url, [alt], [title], [size] %}
<!-- Tag Alias -->
{% fi /url, [alt], [title], [size] %}

/url    : Relative path to image URL.
[alt]   : Alternate text (for search engines).
[title] : Tooltip at mouseover.
[size]  : Size of image in any ratio (%, px, em).

All parameters except /url are optional.
```

### Examples

```md
{% fi /images/docs/github.png %}
```

{% fi /images/docs/github.png %}

#### Full Image with alt & title

```md
{% fi /images/docs/github.png, Alt text, Title text %}
```

{% fi /images/docs/github.png, Alt text, Title text %}

#### Full Image with 100% size

```md
{% fi /images/docs/github.png, Alt text, Title text, 100% %}
```

{% fi /images/docs/github.png, Alt text, Title text, 100% %}

#### Full Image with 200px & without alt & title

```md
{% fi /images/docs/github.png,,, 200px %}
```

{% fi /images/docs/github.png,,, 200px %}

{% note info %}
Recommended to use this tag once per article.
{% endnote %}
