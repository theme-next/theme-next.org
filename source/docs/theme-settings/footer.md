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

{% code lang:yml next/_config.yml %}
footer:
  icon:
    name: user
{% endcode %}

<!-- endtab -->

<!-- tab <code>animated</code> -->
Set up animated of footer icon by changing the value of `icon.animated`:

* `true` → Icon will be animated.
* **`false`** → Icon will not be animated.

{% code lang:yml next/_config.yml %}
footer:
  icon:
    animated: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>color</code> -->
Set up color of footer icon by changing the value of `icon.color`. Please use Hex Code, and red (#ff0000) is recommended for `heart` icon.

{% code lang:yml next/_config.yml %}
footer:
  icon:
    color: "#808080"
{% endcode %}

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

{% code lang:yml next/_config.yml %}
footer:
  powered:
    enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Hexo Version Information.
* `false` → Not Displaying Hexo Version Information.

{% code lang:yml next/_config.yml %}
footer:
  powered:
    version: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

<!-- tab <code>theme</code> -->

{% subtabs platform2 %}
<!-- tab <code>enable</code> -->
* **`true`** → Displaying Theme & Scheme Information.
* `false` → Not Displaying Theme & Scheme Information.

{% code lang:yml next/_config.yml %}
footer:
  theme:
    enable: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>version</code> -->
* **`true`** → Displaying Theme NexT Version Information.
* `false` → Not Displaying Theme NexT Version Information.

{% code lang:yml next/_config.yml %}
footer:
  theme:
    version: true
{% endcode %}
<!-- endtab -->
{% endsubtabs %}
<!-- endtab -->

{% endtabs %}

#### Adding Custom Information

If you want, any custom text can be defined within footer in `custom_text` section in {% label primary@theme config file %} like:

```yml next/_config.yml
footer:
  custom_text: Hosted by <a target="_blank" rel="external nofollow" href="https://pages.coding.me"><b>Coding Pages</b></a>
```
