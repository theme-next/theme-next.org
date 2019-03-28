---
title: SEO
description: NexT User Docs – Theme Settings – SEO
---

### SEO Setting

Next provides useful options for better Search Engine Optimization (SEO).

{% tabs SEO %}
<!-- tab <code>disable_baidu_transformation</code> -->
By default China's search engine Baidu will cache and rewrite your site to provide a webpage snapshot for mobile users. You can disable this by setting the value `disable_baidu_transformation` to `true` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
disable_baidu_transformation: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>canonical</code> -->
By default a canonical link tag is created in Hexo by setting the value `canonical` to `true` in {% label primary@theme config file %} after you have set up your URL `url: http://yoursite.com` in {% label info@site config file %}. More detailed information can be found in [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066).

{% code lang:yml next/_config.yml %}
canonical: true
{% endcode %}
<!-- endtab -->

<!-- tab <code>seo</code> -->
Set the value `enable` to `true` in `seo` section to change headers hierarchy on `subtitle` in {% label info@site config file %} and on all post/pages titles for better SEO in {% label primary@theme config file %} as following:

{% code lang:yml next/_config.yml %}
seo: false
{% endcode %}
<!-- endtab -->

<!-- tab <code>index_with_subtitle</code> -->
Set the value `enable` to `true` in `index_with_subtitle` section to add `subtitle` information in {% label info@site config file %} to index page.

{% code lang:yml next/_config.yml %}
index_with_subtitle: false
{% endcode %}
<!-- endtab -->

{% endtabs %}

### ExtURL

External URL with BASE64 encrypt & decrypt which provide nonsense for search engines to `<a>` tags.

#### Description

Search engines scan `<a>` tag with hight priority. You may add `external` / `nofollow` / `noopener` / `noreferrer` or any similar tricks, in any case all external links from your site will be indexed on your site. But here exists another trick: crawlers doesn't reproduce any javascript – this do clients on their local devices.
That tag give the way to set any external link without `<a>` tag. So, some crawlers like Yandex will not give away links weight from your site and this very useful for SEO. This tag perform:

* Replaces `a` HTML tag with `span` HTML tag.
* Crypt & Decrypt URL with BASE64. User cannot see base64 format in browser src for this link, but he will see tooltip where this URL pointed to or will be shown custom title which can be specified in `title` tag parameter.
* Backlinks by this tag will not be scanned by any monitoring. It's like you open new link with javascript at new tab.
* Works on mobile devices too, yep.

{% note warning %}
This tag was created exceptionally for better SEO-optimization. Any attempts to confuse end-user by phishing links not allowed!
{% endnote %}

#### Settings
Just one setting must be turned on under the `Tags Settings` section in {% label primary@theme config file %}:

```yml next/_config.yml
exturl: true
```

***

**Below is the usage of `exturl` tag, which will no longer be supported.**

#### Usage

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

#### Examples

```md
Welcome to [Theme NexT Organization](https://github.com/theme-next)!
If you want new feature or want to report a bug, feel free to {% exturl open an issue https://github.com/theme-next/hexo-theme-next/issues/new Open new issue in NexT repository %}.
And if you have coding skills, NexT will be glad for your {% exturl pull request https://github.com/theme-next/hexo-theme-next/pulls "See all current pulls" %}.
```

Welcome to [Theme NexT Organization!](https://github.com/theme-next)
If you want new feature or want to report a bug, feel free to {% exturl open an issue. https://github.com/theme-next/hexo-theme-next/issues/new Open new issue in NexT repository %}
And if you have coding skills, NexT will be glad for your {% exturl pull request. https://github.com/theme-next/hexo-theme-next/pulls "See all current pulls" %}

### Webmaster Tools

#### Google Webmaster Tools

Set the verification string of [Google Webmaster Tools](https://www.google.com/webmasters/tools) which is used in submitting sitemap.

{% tabs google-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Google Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
{% code lang:html %}
<meta name="google-site-verification" content="XXXXXXXXXXXXXXXXXXXXXXX" />
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `google_site_verification` section:
{% code lang:yml next/_config.yml %}
google_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Bing Webmaster Tools

Set the verification string of [Bing Webmaster Tools](https://www.bing.com/webmaster/) which is used in submitting sitemap.

{% tabs bing-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Bing Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
{% code lang:html %}
<meta name="msvalidate.01" content="XXXXXXXXXXXXXXXXXXXXXXX" />
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `bing_site_verification` section:
{% code lang:yml next/_config.yml %}
bing_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Yandex Webmaster Tools

Set the verification string of [Yandex Webmaster Tools](https://webmaster.yandex.ru/) which is used in submitting sitemap.

{% tabs yandex-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Yandex Webmaster Tools and go to verification methods and choose `Meta Tag`, you will get some code:
{% code lang:html %}
<meta name="yandex-verification" content="XXXXXXXXXXXXXXXXXXXXXXX" />
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `yandex_site_verification` section:
{% code lang:yml next/_config.yml %}
yandex_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Baidu Webmaster Tools

Set the verification string of [Baidu Webmaster Tools](https://ziyuan.baidu.com/site/) which is used in submitting sitemap.

{% tabs Baidu-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Baidu Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
{% code lang:html %}
<meta name="baidu-site-verification" content="XXXXXXXXXXXXXXXXXXXXXXX" />
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `baidu_site_verification` section:
{% code lang:yml next/_config.yml %}
baidu_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
{% endcode %}
<!-- endtab -->
{% endtabs %}

NexT also supports the baidu push so that the blog will push the url to baidu automatically which is very helpful for SEO. You can enable it by editing values `related_posts.enable` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
baidu_push: false
```
