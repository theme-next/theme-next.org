---
title: Front Matter
description: NexT User Docs – Theme Settings - Front Matter
---

> Front-matter is a block of YAML or JSON at the beginning of the file that is used to configure settings for your writings. Front-matter is terminated by three dashes when written in YAML or three semicolons when written in JSON.  
--- from hexo site.

**YAML**
```yaml
---
title: Hello World
date: 2013/7/13 20:46:25
---
```

**JSON**
```json
"title": "Hello World",
"date": "2013/7/13 20:46:25"
;;;
```

Next extends and provide more variables. It allows users to configure a single page.

# Settings & Their Default Values

Setting | Description | Default
--- | --- | ---
`toc` | Table of Contents in the Sidebar | From theme `_config.yml`
`reward_settings` | Reward settings | From theme `_config.yml`
`quicklink` | Quicklink Support | From theme `_config.yml`

**Example**

``` yaml
toc:
  enable: true
  number: false
  max_depth: 3
reward_settings:
  enable: true
  comment: Donate comment here.
quicklink:
  enable: true
  delay: true
  timeout: 3000
  priority: true
  ignores:
```
