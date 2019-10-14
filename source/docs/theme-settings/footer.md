---
title: Footer
description: NexT User Docs – Theme Settings – Footer
---

### Site Footer Setting

#### Site Start Time

By default NexT shows current year in the footer like `© 2018`. You can configure it to show the time gap like `© 2015 - 2018` by editing values in `since` section in {% label primary@theme config file %}.

```yml next/_config.yml
footer:
  since: 2015
```

#### Site Footer Icon

By default NexT shows black `user` icon {% btn #,, user %} without animation between year and copyright information in the footer. You can configure it by editing values in `icon` section in {% label primary@theme config file %}.

{% tabs icon %}
<!-- tab <code>name</code> -->
The name of footer icon can be founded in [Font Awesome](https://fontawesome.com) site. `heart` is recommended.

```yml next/_config.yml
footer:
  icon:
    name: user
```

<!-- endtab -->

<!-- tab <code>animated</code> -->
Set up animated of footer icon by changing the value of `icon.animated`:

* `true` → Icon will be animated.
* **`false`** → Icon will not be animated.

```yml next/_config.yml
footer:
  icon:
    animated: false
```
<!-- endtab -->

<!-- tab <code>color</code> -->
Set up color of footer icon by changing the value of `icon.color`. Please use Hex Code, and red (#ff0000) is recommended for `heart` icon.

```yml next/_config.yml
footer:
  icon:
    color: "#808080"
```

<!-- endtab -->
{% endtabs %}

#### Site Copyright Name

By default NexT shows the name of `author` from {% label info@site config file %}. You can configure it by editing values in `copyright` section in {% label primary@theme config file %}.

```yml next/_config.yml
footer:
  copyright:
```

#### Site Platform Information

By default NexT shows Hexo and Theme & scheme information like `Powered by Hexo v3.7.1 | Theme — NexT.Muse v6.3.0`. You can configure it by editing values in `powered` and `theme` section in {% label primary@theme config file %}.

{% tabs platform %}
<!-- tab <code>powered</code> -->

{% subtabs platform1 %}
<!-- tab <code>enable</code> -->
* **`true`** → Displaying `Powered by Hexo` Information.
* `false` → Not Displaying `Powered by Hexo` Information.

```yml next/_config.yml
footer:
  powered:
    enable: true
```
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Hexo Version Information.
* `false` → Not Displaying Hexo Version Information.

```yml next/_config.yml
footer:
  powered:
    version: true
```
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>theme</code> -->

{% subtabs platform2 %}
<!-- tab <code>enable</code> -->
* **`true`** → Displaying Theme & Scheme Information.
* `false` → Not Displaying Theme & Scheme Information.

```yml next/_config.yml
footer:
  theme:
    enable: true
```
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Theme NexT Version Information.
* `false` → Not Displaying Theme NexT Version Information.

```yml next/_config.yml
footer:
  theme:
    version: true
```
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

{% endtabs %}

#### Site Beian Information

Beian information is for Chinese users. By default NexT will not show the information of beian. You can configure it by editing values in `beian` section in {% label primary@theme config file %}.

```yml next/_config.yml
footer:
  beian:
    enable: true
    icp: 京ICP备 1234567890号-1
    gongan_id: 1234567890
    gongan_num: 京公网安备 1234567890号
    gongan_icon_url: /uploads/beian.png
```

