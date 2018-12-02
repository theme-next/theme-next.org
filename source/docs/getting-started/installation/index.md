---
title: Installation
description: NexT User Docs – Starting to Use – Detailed Installation
---

### Go to Hexo dir

Change dir to {% label info@site root directory %}. There must be `node_modules`, `source`, `themes` and other directories:

```bash
$ cd hexo
$ ls
_config.yml  node_modules  package.json  public  scaffolds  source  themes
```

### Get NexT

Download theme from GitHub. There are **3 options** to do it, need to **choose only one** of them.

{% tabs download-next %}
<!-- tab {% label success@Latest Master Branch %} -->
**Option 3: Download {% exturl Latest Master Branch https://github.com/theme-next/hexo-theme-next/archive/master.zip %}**

May be **unstable**, but includes **latest features**. Recommended for advanced users and for developers.

{% subtabs latest-master-branch %}
<!-- tab {% label success@Git %} -->
{% code lang:bash %}
$ git clone https://github.com/theme-next/hexo-theme-next themes/next
{% endcode %}

This variant will give to you the **whole repository** (with `.git` directory inside).
And in any time you can update current version with git (instructions below) and switch to any tagged release or on latest master or any other branch.
At most cases useful as for users and for developers.

Get tags list:

{% code lang:bash %}
$ cd themes/next
$ git tag -l
…
v6.0.0
v6.0.1
v6.0.2
{% endcode %}

For example, you want to switch on `v6.0.1` tagged release version. Input the following command:

{% code lang:bash %}
$ git checkout tags/v6.0.1
Note: checking out 'tags/v6.0.1'.
…
HEAD is now at da9cdd2... Release v6.0.1
{% endcode %}

And if you want to switch back on master branch, input this command:

{% code lang:bash %}
$ git checkout master
{% endcode %}

**Update**
You can update to latest master branch by the following command:

{% code lang:bash %}
$ cd themes/next
$ git pull
{% endcode %}

And if you see any error message during update (something like **«Commit your changes or stash them before you can merge»**), recommended to learn [Data Files](/docs/getting-started/data-files/) feature.
Howbeit, you can bypass update errors by `Commit`, `Stash` or `Discard` local changes. See {% exturl here https://stackoverflow.com/a/15745424/5861495 %} how to do it.
<!-- endtab -->

<!-- tab Curl & Tar -->
{% code lang:bash %}
$ mkdir themes/next
$ curl -L https://api.github.com/repos/theme-next/hexo-theme-next/tarball | tar -zxv -C themes/next --strip-components=1
{% endcode %}

Same as before under `curl & tar & wget` variant, but will download **only latest master branch version**.
At some cases useful for developers.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Tagged Release Version -->
**Option 2: Download {% exturl Tagged Release Version https://github.com/theme-next/hexo-theme-next/releases %}**

In rare cases useful, but not recommended.
You must define version. Replace `v6.0.0` with any version from {% exturl tags list https://github.com/theme-next/hexo-theme-next/tags %}.

{% subtabs tagged-release-version %}
<!-- tab Git -->
{% code lang:bash %}
$ git clone --branch v6.0.0 https://github.com/theme-next/hexo-theme-next themes/next
{% endcode %}

This variant will give to you the **defined release version** (with `.git` directory inside).
And in any time you can switch to any tagged release, but with limit to defined version.
<!-- endtab -->

<!-- tab cURL & tar -->
{% code lang:bash %}
$ mkdir themes/next
$ curl -L https://api.github.com/repos/theme-next/hexo-theme-next/tarball/v6.0.0 | tar -zxv -C themes/next --strip-components=1
{% endcode %}

Same as before under `curl & tar & wget` variant, but will download **only concrete version**.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->

<!-- tab Latest Release Version -->
**Option 1: Download {% exturl Latest Release Version https://github.com/theme-next/hexo-theme-next/releases/latest %}**

At most cases **stable**. Recommended for beginners.

{% subtabs latest-release-version %}
<!-- tab cURL & tar & Wget -->
{% code lang:bash %}
$ mkdir themes/next
$ curl -s https://api.github.com/repos/theme-next/hexo-theme-next/releases/latest | grep tarball_url | cut -d '"' -f 4 | wget -i - -O- | tar -zx -C themes/next --strip-components=1
{% endcode %}

This variant will give to you **only latest release version** (without `.git` directory inside).
So, there is impossible to update this version with `git` later.
Instead you always can use separate configuration (e.g. [Data Files](/docs/getting-started/data-files/)) and download new version inside old directory (or create new directory and redefine `theme` in {% label info@site config file %}), without losing your old configuration.
<!-- endtab -->
{% endsubtabs %}

<!-- endtab -->
{% endtabs %}

### Set it up

When NexT download will complete, we must go back to previous guide and follow [Enabling NexT](/docs/getting-started/#Enabling-NexT) instructions.
