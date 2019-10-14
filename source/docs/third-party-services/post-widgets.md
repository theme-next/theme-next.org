---
title: Post Widgets
description: NexT User Docs – Third-party Service Integration – Post Widgets
---

### Facebook Comments and Likes

The [Facebook comments plugin](https://developers.facebook.com/docs/plugins/comments?locale=en_US) lets people comment on content on your site using their Facebook account. People can choose to share their comment activity with their friends (and friends of their friends) on Facebook as well. The comments plugin also includes built-in moderation tools and social relevance ranking.

1. Firstly you need to integrate [Facebook SDK](https://developers.facebook.com/apps), by setting following options in {% label primary@theme config file %}:

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
Login to VKontakte Developers and [create apps](https://vk.com/editapp?act=create). Go to the [Comments Widget](https://vk.com/dev/Comments), you will get some code:
```html
<script type="text/javascript">
  VK.init({apiId: API_ID, onlyWidgets: true});
</script>
```
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by setting value `vkontakte_api.enable` to `true`, and copy `API_ID` value of `apiId` key in {% label primary@theme config file %}.

```yml next/_config.yml
vkontakte_api:
  enable:       false
  app_id:       API_ID #<app_id>
  comments:     true
  num_of_posts: 10
```
<!-- endtab -->
{% endtabs %}

With «Like» widget your visitors can express their attitude towards an article with one click or immediately share the link to it with their friends.

{% tabs vkontakte_api_like %}
<!-- tab Get API ID → -->
Login to VKontakte Developers and [create apps](https://vk.com/editapp?act=create). Go to the [Like Widget](https://vk.com/dev/Like), you will get some code:
```html
<script type="text/javascript">
  VK.init({apiId: API_ID, onlyWidgets: true});
</script>
```
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by setting value `vkontakte_api.enable` to `true`, and copy `API_ID` value of `apiId` key in {% label primary@theme config file %}.

```yml next/_config.yml
vkontakte_api:
  enable:       false
  app_id:       API_ID #<app_id>
  like:         true
  num_of_posts: 10
```
<!-- endtab -->
{% endtabs %}

### Widgetpack Rating

Rating service with login through any social networks like Facebook, Twitter, Google+, LinkedIn, Instagram and others.

{% tabs rating %}
<!-- tab Get ID → -->
Login to [widgetpack](https://widgetpack.com/admin#signin) and add new site, you will get your site ID:
```html
wpac_init.push({widget: 'Rating', id: ID});
```
<!-- endtab -->

<!-- tab NexT Config -->

You can enable it by setting value `rating.enable` to `true`, and copy `ID` value of `id` in {% label primary@theme config file %}. You can also configure the rating color by editing values in `rating.color` section.

```yml next/_config.yml
rating:
  enable: false
  id:     ID #<app_id>
  color:  fc6423
```
<!-- endtab -->
{% endtabs %}

### AddThis

{% tabs addthis %}
<!-- tab Sign Up → -->
Sign up in [AddThis](https://www.addthis.com). You can use Google/Facebook/Twitter to login.
<!-- endtab -->

<!-- tab AddThis ID → -->
Get AddThis ID in this menu: `More..` → `General` → `ID`. See example on the picture below:
![AddThis ID](/images/docs/add-this-id.png)
<!-- endtab -->

<!-- tab NexT Config -->
Edit the configurations in `add_this_id` section in the {% label primary@theme config file %} as following:
```yml next/_config.yml
add_this_id: your_add_this_id
```
<!-- endtab -->
{% endtabs %}
