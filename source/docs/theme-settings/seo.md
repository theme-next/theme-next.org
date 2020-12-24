---
title: SEO
description: NexT User Docs – Theme Settings – SEO
---

### SEO Setting

Next provides useful options for better Search Engine Optimization (SEO).

{% note info %}
By default a canonical link tag is created in Hexo after you have set up your URL `url: http://yoursite.com` in {% label info@site config file %}. More detailed information can be found in [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066).
{% endnote %}

{% tabs SEO %}
<!-- tab <code>robots & noindex</code> -->
[Robots meta directives](https://moz.com/learn/seo/robots-meta-directives) (sometimes called "meta tags") are pieces of code that provide crawlers instructions for how to crawl or index web page content. You can tell the search engines to don't index the page by setting the value `noindex` to `true` in [Front-matter](./custom-pages.html#adding-custom-page-2).
You can also specify a certain value of robots directive by setting the `robots` in Front-matter. `noindex: true` is equivalent to `robots: noindex`.

Simple usage case:
```md
title: custom_name
date: 2014-12-22 12:39:04
noindex: true
---
```

Advanced usage case:
```md
title: custom_name
date: 2014-12-22 12:39:04
robots: noimageindex, nofollow, nosnippet
---
```
<!-- endtab -->

<!-- tab <code>disable_baidu_transformation</code> -->
By default China's search engine Baidu will cache and rewrite your site to provide a webpage snapshot for mobile users. You can disable this by setting the value `disable_baidu_transformation` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
disable_baidu_transformation: true
```
<!-- endtab -->

<!-- tab <code>index_with_subtitle</code> -->
Set the value `enable` to `true` in `index_with_subtitle` section to add `subtitle` information in {% label info@site config file %} to index page.

```yml next/_config.yml
index_with_subtitle: true
```
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

### Webmaster Tools

#### Google Webmaster Tools

Set the verification string of [Google Webmaster Tools](https://www.google.com/webmasters/tools) which is used in submitting sitemap.

{% tabs google-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Google Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="google-site-verification" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `google_site_verification` section:
```yml next/_config.yml
google_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Bing Webmaster Tools

Set the verification string of [Bing Webmaster Tools](https://www.bing.com/webmaster/) which is used in submitting sitemap.

{% tabs bing-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Bing Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="msvalidate.01" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `bing_site_verification` section:
```yml next/_config.yml
bing_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Yandex Webmaster Tools

Set the verification string of [Yandex Webmaster Tools](https://webmaster.yandex.ru/) which is used in submitting sitemap.

{% tabs yandex-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Yandex Webmaster Tools and go to verification methods and choose `Meta Tag`, you will get some code:
```html
<meta name="yandex-verification" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `yandex_site_verification` section:
```yml next/_config.yml
yandex_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

#### Baidu Webmaster Tools

Set the verification string of [Baidu Webmaster Tools](https://ziyuan.baidu.com/site/) which is used in submitting sitemap.

{% tabs Baidu-webmaster-tools %}
<!-- tab Get Verification Code → -->
Login to Baidu Webmaster Tools and go to verification methods and choose `HTML Tag`, you will get some code:
```html
<meta name="baidu-site-verification" content="XXXXXXXXXXXXXXXXXXXXXXX">
```
<!-- endtab -->

<!-- tab NexT Config -->
Copy `XXXXXXXXXXXXXXXXXXXXXXX` value of `content` key.
Edit {% label primary@theme config file %} and add or change `baidu_site_verification` section:
```yml next/_config.yml
baidu_site_verification: XXXXXXXXXXXXXXXXXXXXXXX
```
<!-- endtab -->
{% endtabs %}

NexT also supports the baidu push so that the blog will push the url to baidu automatically which is very helpful for SEO. You can enable it by setting value `baidu_push` to `true` in {% label primary@theme config file %}.

```yml next/_config.yml
baidu_push: true
```
