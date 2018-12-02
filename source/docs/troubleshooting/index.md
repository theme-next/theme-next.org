---
title: Troubleshooting
description: NexT User Docs – Troubleshooting
---
### Keep up indentation

When you edit any YAML configs, always need to keep up indents.
Currently, in all Hexo and NexT configuration files parameters uses **2 spaces indents** from parent option.

For example, we want to change NexT scheme from standart `Muse` to `Gemini` and want to use [Data Files](/docs/getting-started/data-files/) feature with [Hexo way](/docs/getting-started/data-files/#option-1) option.

{% tabs keep-up-indentation %}
<!-- tab NexT Config → -->
We open {% label primary@theme config file %} and under the «Scheme Settings» section copy next parameters:

{% code lang:yml next/_config.yml %}
# ---------------------------------------------------------------
# Scheme Settings
# ---------------------------------------------------------------

scheme: Muse
#scheme: Mist
#scheme: Pisces
#scheme: Gemini
{% endcode %}
<!-- endtab -->

<!-- tab Hexo Config -->
Then we open {% label info@site config file %} and paste these parameters under `theme_config` section:

{% subtabs 2-spaces-indents %}
<!-- tab {% label danger@Nothing Happen %}-->
{% code lang:yml hexo/_config.yml %}
theme_config:

#scheme: Muse
#scheme: Mist
#scheme: Pisces
scheme: Gemini
{% endcode %}

Here will nothing happen because indentation not keeped up. Hexo just can't see these parameters because subparameters (children parameters of `theme_config` parameter) are not exists. Let's see [same configuration with indents](#2-spaces-indents-2).
<!-- endtab -->

<!-- tab {% label success@Worked Fine %}-->
{% code lang:yml hexo/_config.yml %}
theme_config:

  #scheme: Muse
  #scheme: Mist
  #scheme: Pisces
  scheme: Gemini
{% endcode %}

And here Hexo can read these parameters as `theme_config.scheme: Gemini` in same way, as NexT can read `scheme: Gemini` parameter. So, with 2 spaces indents from parent option(s) Hexo must loaded any NexT parameters and worked fine.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Backtick Code Block in Tags

When backtick code block(s) exists inside other tags (like `blockquote`, `note`, `tabs`), that code block will be generated as «undefined» string in HTML. There are several ways to resolve this:

{% tabs backtick-code-block %}
<!-- tab {% label success@Tagged Code Block %} -->
Instead of {% exturl Backtick Code Block https://hexo.io/docs/tag-plugins.html#Backtick-Code-Block %} you also can use tagged {% exturl Code Block https://hexo.io/docs/tag-plugins.html#Code-Block %}.
But in rare cases standard code block can obtain errors inside other tags.
<!-- endtab -->

<!-- tab HTML tags -->
Use HTML tags instead of Hexo tags: `<pre><code>`.
In this case you can't add code syntax highlighting.
<!-- endtab -->

<!-- tab Bugfix for Backtick -->
Here is {% exturl pull with bugfix for use backtick code block inside tags https://github.com/hexojs/hexo/pull/2321 %} (from Dec 2016 still not merged).
So, for this moment you can merge it manually, if you need to use backtick code block inside tags.

{% note danger %}
Sometimes during generate you can see «{% label danger@Error: Unmatched placeholder remains! %}» message.
This mean somewhere in your posts, blocks with tags was commented with `{% raw %}{#{% endraw %}` and `{% raw %}#}{% endraw %}` symbols:

{% tabs unmatched-placeholder-remains %}
<!-- tab {% label danger@Error %} -->
{% code %}
{% raw %}{#
{% label error@Unmatched placeholder remains! %}
#}{% endraw %}
{% endcode %}
<!-- endtab -->

<!-- tab {% label success@Success %} -->
{% code %}
{% raw %}
{% label error@Unmatched placeholder remains! %}
{% endraw %}
{% endcode %}
<!-- endtab -->
{% endtabs %}

{% endnote %}
<!-- endtab -->
{% endtabs %}

### Favicon Set but Doesn't Work (Need to redocs)

Put your `favicon` under {% label info@site's %} `source` dir. If you find that your Favicon doesn't work, please clean your browser's cache first and then visit your Favicon's URL directly, which should be `http(s)://your-domain.com/favicon.ico`.

{% note warning %}
If your site is in a subdirectory please set it to `favicon: favicon.ico`.
{% endnote %}

### Cannot Find Module XXX

NexT's tag plugin uses some submodules of Hexo, like `hexo-util`. NPM uses new module install mode in version 3, NexT will use this mode which means if you are using a old NPM will find this error. So if you find error like "Cannot find module XXX", please use `npm -v` to check your NPM version.

* Version > 3: Still not work? Please remove `node_modules` directory and reinstall using `npm install`.
* Version < 3: 
  * You can update your NPM
  * Or can install modules (and their dependences) manually: `npm install --save hexo-util`; where `hexo-util` is a example, please replace it with module name in the error.