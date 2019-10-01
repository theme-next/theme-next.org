---
title: Chat Services
description: NexT User Docs – Third-party Service Integration – Chat Services
---

### Chatra

[Chatra](https://chatra.io) is a live chat messenger app for your website.

{% tabs Chatra %}
<!-- tab Enable Chatra → -->
Visit [Dashboard](https://app.chatra.io/settings/general) to get your ChatraID.

{% code lang:yml next/_config.yml %}
# Chatra Support
# See: https://chatra.io
# Dashboard: https://app.chatra.io/settings/general
chatra:
  enable: true
  async: true
  id: <ChatraID>
{% endcode %}

<!-- endtab -->

<!-- tab Activate sidebar button -->
After Chatra enabled, you can set `chat.enable` to `true` and set `chat.service` to `chatra` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
# A button to open designated chat widget in sidebar.
# Firstly, you need enable the chat service you want to activate its sidebar button.
chat:
  enable: true
  service: chatra
  icon: comment
  text: Chat
{% endcode %}
<!-- endtab -->
{% endtabs %}

### Tidio

[Tidio](https://www.tidiochat.com/) is a live chat messenger app for your website.

{% tabs Tidio %}
<!-- tab Enable Tidio → -->
Visit [Dashboard](https://www.tidiochat.com/panel/dashboard) to get your Public Key.

{% code lang:yml next/_config.yml %}
# Tidio Support
# See: https://www.tidiochat.com
# Dashboard: https://www.tidiochat.com/panel/dashboard
tidio:
  enable: true
  key: <Publick Key>
{% endcode %}

<!-- endtab -->

<!-- tab Activate sidebar button -->
After Tidio enabled, you can set `chat.enable` to `true` and set `chat.service` to `tidio` in {% label primary@theme config file %}.

{% code lang:yml next/_config.yml %}
# A button to open designated chat widget in sidebar.
# Firstly, you need enable the chat service you want to activate its sidebar button.
chat:
  enable: true
  service: tidio
  icon: comment
  text: Chat
{% endcode %}
<!-- endtab -->
{% endtabs %}
