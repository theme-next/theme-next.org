---
title: Comments and Widgets
description: NexT User Docs – Third-party Service Integration – Comments and Widgets
---

### Disqus

Disqus is a global comment system that improves discussion on websites and connects conversations across the web.

1. Create an account and log into {% exturl Disqus https://disqus.com/ %}. Once logged in, click the `GET STARTED` button on the homepage, then select `I want to install Disqus on my site` option and you will see the `Create a new site` interface.
2. Enter your `Website Name`, which will serve as your Disqus shortname, and select a Category from the drop-down menu. Then click `Create Site` button.
3. Choose `I don't see my platform listed, install manually with Universal Code`, configure Disqus for your site, and click `Complete Setup` button.
4. Set the value `enable` to `true`, add the obtained Disqus shortname (`shortname`), and edit other configurations in `disqus` section in the {% label primary@theme config file %} as following:
    ```yml next/_config.yml
    disqus:
      enable: false
      shortname: your-short-disqus-name
      count: true
    ```

### Facebook Comments and Likes

The {% exturl Facebook comments plugin https://developers.facebook.com/docs/plugins/comments?locale=en_US %} lets people comment on content on your site using their Facebook account. People can choose to share their comment activity with their friends (and friends of their friends) on Facebook as well. The comments plugin also includes built-in moderation tools and social relevance ranking.

1. Firstly you need to integrate {% exturl Facebook SDK https://developers.facebook.com/apps %}, by setting following options in {% label primary@theme config file %}:

    ```yml next/_config.yml
    # Facebook SDK Support.
    facebook_sdk:
      enable:       false
      app_id:       #<app_id>
      fb_admin:     #<user_id>
      like_button:  #true
      webmaster:    #true
    ```

2. Then set the value `enable` to `true` in `facebook_comments_plugin` section, and change following options below:

    ```yml next/_config.yml
    # Facebook comments plugin
    # This plugin depends on Facebook SDK.
    # If facebook_sdk.enable is false, Facebook comments plugin is unavailable.
    facebook_comments_plugin:
      enable:       false
      num_of_posts: 10    # min posts num is 1
      width:        100%  # default width is 550px
      scheme:       light # default scheme is light (light or dark)
    ```

### VKontakte Comments and Likes

VKontakte offers flexible commentting tools that can be easily built into your website. This enables VK users to comment on your materials without having to register on your site.  

{% tabs vkontakte_api %}
<!-- tab Get API ID → -->
Login to VKontakte Developers and {% exturl create apps https://vk.com/editapp?act=create %}. Go to the {% exturl Comments Widget https://vk.com/dev/Comments %}, you will get some code:
{% code lang:html %}
<script type="text/javascript">
  VK.init({apiId: API_ID, onlyWidgets: true});
</script>
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by editing values `vkontakte_api.enable` to `true`, and copy `API_ID` value of `apiId` key in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
vkontakte_api:
  enable:       false
  app_id:       API_ID #<app_id>
  comments:     true
  num_of_posts: 10
{% endcode %}
<!-- endtab -->
{% endtabs %}

With «Like» widget your visitors can express their attitude towards an article with one click or immediately share the link to it with their friends.  

{% tabs vkontakte_api_like %}
<!-- tab Get API ID → -->
Login to VKontakte Developers and {% exturl create apps https://vk.com/editapp?act=create %}. Go to the {% exturl Like Widget https://vk.com/dev/Like %}, you will get some code:
{% code lang:html %}
<script type="text/javascript">
  VK.init({apiId: API_ID, onlyWidgets: true});
</script>
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by editing values `vkontakte_api.enable` to `true`, and copy `API_ID` value of `apiId` key in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
vkontakte_api:
  enable:       false
  app_id:       API_ID #<app_id>
  like:         true
  num_of_posts: 10
{% endcode %}
<!-- endtab -->
{% endtabs %}

### LiveRe

LiveRe is a content platform based on social networking site reviews to help users communicate freely.

1. Create an account or log into {% exturl LiveRe https://livere.com %}, click on the `installation` button and select the free city version, then click on the `install now` button.
2. Copy the `data-uid` field in the installation code to get your LiveRe UID.
3. Add the obtained LiveRe UID to the `livere_uid` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Support for LiveRe comments system.
    # You can get your uid from https://livere.com/insight/myCode (General web site)
    livere_uid: your_uid
    ```

### Valine

Valine is a fast, simple & efficient Leancloud based no back end comment system.

1. Create an account or log into {% exturl LeanCloud https://leancloud.cn/dashboard/login.html#/signin %}, and then click on the bottom left corner to {% exturl create the application https://leancloud.cn/dashboard/applist.html#/newapp %} in {% exturl dashboard https://leancloud.cn/dashboard/applist.html#/apps %}.
    ![Valine](/images/docs/valine-1.jpg)
2. Go to the application you just created, select `Settings -> Apply Key` in the lower left corner, and you will see your APP ID and APP Key.
    ![Valine](/images/docs/valine-2.jpg)
3. Set the value `enable` to `true`, add the obtained APP ID (`appid`) and APP Key (`appkey`), and edit other configurations in `valine` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Valine.
    # You can get your appid and appkey from https://leancloud.cn
    # more info please open https://valine.js.org
    valine:
      enable: false # When enable is set to be true, leancloud_visitors is recommended to be closed for the re-initialization problem within different leancloud adk version.
      appid:  # your leancloud application appid
      appkey:  # your leancloud application appkey
      notify: false # mail notifier , https://github.com/xCss/Valine/wiki
      verify: false # Verification code
      placeholder: Just go go # comment box placeholder
      avatar: mm # gravatar style
      guest_info: nick,mail,link # custom comment header
      pageSize: 10 # pagination size
      visitor: false # leancloud-counter-security is not supported for now. When visitor is set to be true, appid and appkey are recommended to be the same as leancloud_visitors' for counter compatibility. Article reading statistic https://valine.js.org/visitor.html
    ```

### Gitment

Gitment is an commenting system based on GitHub Issues, which supports for direct introduction at the front end does not require any backend code. You can log in, view, comment, like, etc. on the page, with full Markdown / GFM and code highlighting support.

{% note info %}
Gitment can only use GitHub accounts for comments.
{% endnote %}

1. Click here to sign up for a {% exturl new OAuth Application https://github.com/settings/applications/new %}. Other content can be filled in at will, but be sure to fill in the correct callback URL (usually the domain name corresponding to the comment page). Then you will get a Client ID and a Client secret, which will be used for subsequent user logins.
2. Create a repository you want to store Gitment comments in your GitHub.
3. Set the value `enable` to `true`, add Client ID (`client_id`) and Client secret (`client_secret`) in step 1, add your Github username (`github_user`) and the created repository name (`github_repo`) in step 2, and edit other configurations in `gitment` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # Gitment
    # Introduction: https://imsun.net/posts/gitment-introduction/
    gitment:
      enable: false
      mint: true # RECOMMEND, A mint on Gitment, to support count, language and proxy_gateway
      count: true # Show comments count in post meta area
      lazy: false # Comments lazy loading with a button
      cleanly: false # Hide 'Powered by ...' on footer, and more
      language: # Force language, or auto switch by theme
      github_user: # MUST HAVE, Your Github Username
      github_repo: # MUST HAVE, The name of the repo you use to store Gitment comments
      client_id: # MUST HAVE, Github client id for the Gitment
      client_secret: # EITHER this or proxy_gateway, Github access secret token for the Gitment
      proxy_gateway: # Address of api proxy, See: https://github.com/aimingoo/intersect
      redirect_protocol: # Protocol of redirect_uri with force_redirect_protocol when mint enabled
    ```
4. After the post is published, you will need to visit this page, log in with your GitHub account and click the `Initialize button`, then other users can post comments on this page.

{% note warning %}
Please note that the authorized permission of Gitment will obtain the read and write access to all your public repositories and maybe send github keys to the 3rd-party imsun's proxy server. **If you concern about the security, we strongly deprecated to use gitment**. {% exturl Useful link https://github.com/theme-next/hexo-theme-next/issues/35 %}
{% endnote %}

### Changyan

Changyan is the industry's leading social commenting system, supporting both PC and mobile access methods, providing a new way of commenting on websites. Changyan has a variety of common account login, triple filtering mechanism, real-time data statistics, fast data export, comprehensive support for mobile and other leading functions. It fully satisfies the needs of major websites for user login, comment, sharing, and review.

1. Create an account or log into {% exturl Changyan https://changyan.kuaizhan.com/ %}, then add your site to get APP ID and APP KEY.
2. Set the value `enable` to `true`, and add the obtained APP ID (`appid`) and APP KEY (`appkey`) to the `changyan` section in the {% label primary@theme config file %} as following:

    ```yml next/_config.yml
    # changyan
    changyan:
      enable: false
      appid:
      appkey:
    ```

{% note warning %}
Please note that you should fill in the ICP record number of your website in time. If not, or the record information is not correct, the comment service will be stopped after 13 days. {% exturl Useful link http://changyan.kuaizhan.com/help/o-beian.html %}
{% endnote %}

### Widgetpack Rating

Rating service with login through any social networks like Facebook, Twitter, Google+, LinkedIn, Instagram and others.

{% tabs rating %}
<!-- tab Get ID → -->
Login to {% exturl widgetpack https://widgetpack.com/admin#signin %} and add new site, you will get your site ID:
{% code lang:html %}
wpac_init.push({widget: 'Rating', id: ID});
{% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by editing values `rating.enable` to `true`, and copy `ID` value of `id` in {% label primary@theme config file %}. You can also configure the rating color by editing values in `rating.color` section.

{% code lang:yml next/_config.yml %}
rating:
  enable: false
  id:     ID #<app_id>
  color:  fc6423
{% endcode %}
<!-- endtab -->
{% endtabs %}
