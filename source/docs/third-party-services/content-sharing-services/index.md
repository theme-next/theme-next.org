---
title: Content Sharing Services
description: NexT User Docs – Third-party Service Integration – Content Sharing Services
---

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
{% code lang:yml next/_config.yml%}
add_this_id: your_add_this_id
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Likely 

Edit the configurations in `likely` section in the {% label primary@theme config file %} as following:

```yml next/_config.yml
# Likely Share
# See: https://ilyabirman.net/projects/likely/
# Likely supports four looks, nine social networks, any button text
# You are free to modify the text value and order of any network
likely:
  enable: true
  look: normal # available values: normal, light, small, big
  networks:
    twitter: Tweet
    facebook: Share
    linkedin: Link
    gplus: Plus
    vkontakte: Share
    odnoklassniki: Class
    telegram: Send
    whatsapp: Send
    pinterest: Pin
```

### Need More Share

{% tabs needmoreshare2 %}
<!-- tab Adding Plugins → -->
There are 2 variants to hook up NexT Need More Share plugin:
* Local installation: Go to [«Dependencies»](https://github.com/theme-next/theme-next-needmoreshare2) with installation instructions of this module.
    {% code lang:bash %}
    $ cd themes/next
    $ git clone https://github.com/theme-next/theme-next-needmoreshare2 source/lib/needsharebutton
    {% endcode %}
* CDN links: Go to {% label primary@theme config file %} and add CDN links:

    {% code lang:yml next/_config.yml %}
    vendors:
      # ...
      # Some contents...
      # ...
      # needMoreShare2
      # https://github.com/revir/need-more-share2
      needmoreshare2_js: https://cdn.jsdelivr.net/gh/theme-next/theme-next-needmoreshare2@1.0.0/needsharebutton.min.js
      needmoreshare2_css: https://cdn.jsdelivr.net/gh/theme-next/theme-next-needmoreshare2@1.0.0/needsharebutton.min.css
    {% endcode %}
<!-- endtab -->

<!-- tab NexT Config -->
Set the value `enable` to `true`, and edit other configurations in `needmoreshare2` section in the {% label primary@theme config file %} as following:
{% code lang:yml next/_config.yml%}
# NeedMoreShare2
# Dependencies: https://github.com/theme-next/theme-next-needmoreshare2
# See: https://github.com/revir/need-more-share2
# Also see: https://github.com/DzmVasileusky/needShareButton
# iconStyle: default | box
# boxForm: horizontal | vertical
# position: top / middle / bottom + Left / Center / Right
# networks: Weibo,Wechat,Douban,QQZone,Twitter,Linkedin,Mailto,Reddit,
#           Delicious,StumbleUpon,Pinterest,Facebook,GooglePlus,Slashdot,
#           Technorati,Posterous,Tumblr,GoogleBookmarks,Newsvine,
#           Evernote,Friendfeed,Vkontakte,Odnoklassniki,Mailru
needmoreshare2:
  enable: false
  postbottom:
    enable: false
    options:
      iconStyle: box
      boxForm: horizontal
      position: bottomCenter
      networks: Weibo,Wechat,Douban,QQZone,Twitter,Facebook
  float:
    enable: false
    options:
      iconStyle: box
      boxForm: horizontal
      position: middleRight
      networks: Weibo,Wechat,Douban,QQZone,Twitter,Facebook
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Baidu Sharing (China)

Edit the configurations in `baidushare` section in the {% label primary@theme config file %} as following:

```yml next/_config.yml
# Baidu Share
# Available value:
#    button | slide
# Warning: Baidu Share does not support https.
baidushare:
  type: button
```
