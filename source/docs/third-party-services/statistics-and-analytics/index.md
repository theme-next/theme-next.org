---
title: Statistics and Analytics
description: NexT User Docs – Third-party Service Integration – Statistics and Analytics
---

### Webmaster Tools

#### Google Webmaster Tools

Set the verification string of {% exturl Google Webmaster Tools https://www.google.com/webmasters/tools %} which is used in submitting sitemap.

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

Set the verification string of {% exturl Bing Webmaster Tools https://www.bing.com/webmaster/ %} which is used in submitting sitemap.

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

Set the verification string of {% exturl Yandex Webmaster Tools https://webmaster.yandex.ru/ %} which is used in submitting sitemap.

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

Set the verification string of {% exturl Baidu Webmaster Tools https://ziyuan.baidu.com/site/ %} which is used in submitting sitemap.

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

### Analytics Tools

#### Google Analytics

1. Create an account and log into {% exturl Google Analytics https://analytics.google.com %}. {% exturl More detailed documentation https://support.google.com/analytics/?hl=en#topic=3544906 %}
2. Edit {% label primary@theme config file %} and change section `google_analytics` to your Google track ID. Google track ID always starts with `UA-`.
    ```yml next/_config.yml
    # Google Analytics
    google_analytics: UA-XXXXXXXX-X
    ```

#### Azure Application Insights

1. Create an account and log into {% exturl Application Insights https://portal.azure.com/ %}. {% exturl More detailed documentation https://docs.microsoft.com/en-us/azure/application-insights/app-insights-create-new-resource %}
2. Edit {% label primary@theme config file %} and change section `application_insights` to your instrumentation key.
    ```yml next/_config.yml
    # Application Insights
    application_insights:
    ```

#### Baidu Analytics (China)

{% tabs baidu-analytics %}
<!-- tab Login → -->
Login to {% exturl Baidu Analytics http://tongji.baidu.com %} and locate to site code getting page.
<!-- endtab -->

<!-- tab Script ID → -->
Copy the script ID after `hm.js?`, like the following picture:
   ![NexT Baidu Analytics](/images/docs/analytics-baidu-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and change section `baidu_analytics` to your script ID.
{% code lang:yml next/_config.yml %}
# Baidu Analytics ID
baidu_analytics: your_id
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Tencent Analytics (China)

1. Please login to {% exturl Tencent Analytics http://ta.qq.com %} and get your ID.
2. Then put it into `tencent_analytics` section of {% label primary@theme config file %}.

    ```yml next/_config.yml
    # Tencent analytics ID
    tencent_analytics: your_id
    ```

#### Tencent Mobile Analytics (China)

1. Create an account and log into {% exturl Tencent Mobile Analytics https://mta.qq.com/ %}. {% exturl More detailed documentation http://docs.developer.qq.com/mta/register_start.html %}
2. Edit {% label primary@theme config file %} and fill section `tencent_mta`.
    ```yml next/_config.yml
    # Tencent MTA ID
    tencent_mta: your-tencent-mta-id
    ```

#### CNZZ Analytics (China)

1. Create an account and log into {% exturl CNZZ Analytics http://www.umeng.com/ %}. {% exturl More detailed documentation https://developer.umeng.com/docs/67963/detail/68609 %}
2. Set the value of section `cnzz_siteid` in {% label primary@theme config file %} to your CNZZ site ID. You can find this ID in link or the auto-generated script.
    ```yml next/_config.yml
    # CNZZ count
    #cnzz_siteid:
    ```

{% note warning %}
The script will show «Webmaster Statistics» and it's ugly, so I used a `display: none;` to hide it.
{% endnote %}

### Counting Tools

#### Firebase

Firebase Analytics provides the functionality of visitor statistics.

{% tabs firestore %}
<!-- tab Get apiKey & projectId → -->
Login to {% exturl Firebase https://console.firebase.google.com/u/0/ %} to get apiKey and projectId. {% exturl More detailed documentation https://firebase.google.com/docs/firestore/ %}
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and add or change `firestore` section:
{% code lang:yml next/_config.yml %}
firestore:
  enable: false
  collection: articles #required, a string collection name to access firestore database
  apiKey: #required
  projectId: #required
  bluebird: false #enable this if you want to include bluebird 3.5.1(core version) Promise polyfill
{% endcode %}
<!-- endtab -->
{% endtabs %}

#### Busuanzi Counting (China)

{% tabs busuanzi-counting %}

<!-- tab Global Settings → -->
Edit `busuanzi_count` option in {% label primary@theme config file %}.
When `enable: true`, global setting is enabled. If `site_uv`, `site_pv`, `page_pv` are all `false`, Busuanzi only counts but never shows.
<!-- endtab -->

<!-- tab Site UV Settings → -->
When `site_uv: true`, it will show site UV in footer.
`site_uv_header` and `site_uv_footer` is custom style words, and you can hide it by leaving it blank. You can also use font-awesome, it looks like `[site_uv_header]UV count[site_uv_footer]`.
{% codeblock lang:yml next/_config.yml %}
# View: Site visited by 12345 people.
site_uv: true
site_uv_header: Site visited by
site_uv_footer: people.
{% endcodeblock %}
<!-- endtab -->

<!-- tab Site PV Settings → -->
When `site_pv: true`, it will show site PV in footer.
`site_pv_header` and `site_pv_footer` is custom style words, and you can hide it by leaving it blank, you can also use font-awesome, it looks like `[site_pv_header]PV count[site_pv_footer]`.
{% codeblock lang:yml next/_config.yml %}
# View: Site visited by 12345 times.
site_pv: true
site_pv_header: Site visited by
site_pv_footer: times.
{% endcodeblock %}
<!-- endtab -->

<!-- tab Per-page PV Settings -->
When `page_pv: true`, it will show page PV under post title.
`page_pv_header` and `page_pv_footer` is custom style words, and you can hide it by leaving it blank, you can also use font-awesome, it looks like `[page_pv_header]PV count[page_pv_footer]`.
{% codeblock lang:yml next/_config.yml %}
# View: Post read by 12345 times.
page_pv: true
page_pv_header: Post read by
page_pv_footer: times.
{% endcodeblock %}
<!-- endtab -->
{% endtabs %}

#### LeanCloud (China)

Adding article reading times counting to NexT theme. Documentation how to set the counter up and running safely aviable in {% exturl hexo-leancloud-counter-security https://github.com/theme-next/hexo-leancloud-counter-security%}.

{% tabs leanCloud-counter %}
<!-- tab Installation → -->
Install `hexo-leancloud-counter-security` by run following command in {% label info@site root dir %}:

    $ npm install hexo-leancloud-counter-security --save

<!-- endtab -->

<!-- tab Hexo Config → -->
Edit {% label info@site config file %} and add following content:
{% code lang:yml hexo/_config.yml %}
leancloud_counter_security:
  enable_sync: true
  app_id: <<your app id>>
  app_key: <<your app key>>
  username: <<your username>> # Will be asked while deploying if is left blank
  password: <<your password>> # Recommmended to be left blank. Will be asked while deploying if is left blank
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Edit {% label primary@theme config file %} and fill options under `leancloud_visitors` section.
{% code lang:yml next/_config.yml %}
# Show number of visitors to each article.
# You can visit https://leancloud.cn get AppID and AppKey.
leancloud_visitors:
  enable: false
  app_id: #<app_id>
  app_key: #<app_key>
  # Dependencies: https://github.com/theme-next/hexo-leancloud-counter-security
  # If you don't care about security in lc counter and just want to use it directly
  # (without hexo-leancloud-counter-security plugin), set the `security` to `false`.
  security: true
  betterPerformance: false
{% endcode %}
<!-- endtab -->
{% endtabs %}
