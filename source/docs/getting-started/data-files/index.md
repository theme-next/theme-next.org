---
title: Data Files
description: NexT User Docs – Starting to Use – Data Files
---
Currently, it is not smooth to update NexT theme from pulling or downloading new releases. It is quite often running into conflict status when updating NexT theme via `git pull`, or need to merge configurations manually when upgrading to new releases.

 At present, NexT encourages users to store some options in {% label info@site config file %} (`hexo/_config.yml`) and other options in {% label primary@theme config file %} (`next/_config.yml`). This approach is applicable, but has some drawbacks:
1. Configurations are splitted into two pieces
2. Users may be confused which place should be for options

In order to resolve this issue, NexT will take advantage of {% exturl Hexo Data files https://hexo.io/docs/data-files.html %}. Because Data files is introduced in Hexo 3, so you need upgrade Hexo to 3.0 (or above) to use this feature.

If you prefer Hexo 2.x, you can still use the old approach for configurations. NexT is still compatible with Hexo 2.x (but errors are possible).

{% tabs option %}
<!-- tab {% label success@Hexo-Way %} -->
With this way, all your configurations locate in main {% label info@site config file %}.
You don't need to edit {% label primary@theme config file %} or create any new files.
But you need to **[keep up indentation](/docs/troubleshooting/#Keep-up-indentation)** within `theme_config` option.

{% note info %}
If there are any new options in new releases, you just need to copy those options from {% label primary@theme config file %}, paste into {% label info@site config file %} and set their values to whatever you want.
{% endnote %}

**Usage**

1. Check for no exists `hexo/source/_data/next.yml` file (delete it if exists).
2. Copy needed NexT theme options from {% label primary@theme config file %} into {% label info@site config file %}, then
   2.1. Move all this settings to the right with two spaces (in Visual Studio Code: select all strings, <kbd>CTRL</kbd> + <kbd>]</kbd>).
   2.2. Add `theme_config:` parameter above all this settings.

**Useful links**

* {% exturl Hexo Configuration https://hexo.io/docs/configuration.html#Overriding-Theme-Config %}
* {% exturl Hexo Pull #757 https://github.com/hexojs/hexo/pull/757 %}

<!-- endtab -->

<!-- tab NexT-Way -->
With this way, you can put all your configurations into one place (`hexo/source/_data/next.yml`).
You don't need to edit {% label primary@theme config file %} (`next/_config.yml`).
But option may not accurately procces all hexo external libraries with their additional options (for example, `hexo-server` module options may be readed only in default hexo config).

{% note info %}
If there are any new options in new releases, you just need to copy those options from {% label primary@theme config file %}, paste into `hexo/source/_data/next.yml` and set their values to whatever you want.
{% endnote %}

**Usage**

1. Please ensure you are using Hexo 3 (or above).
2. Create an file named `next.yml` in `hexo/source/_data` directory (create `_data` directory if it did not exists).

   {% note warning %}
   After that steps there are **2 variants**, need to **choose only one** of them and **resume next steps**.
   {% endnote %}

   {% subtabs variant %}
   <!-- tab <strong><code>override: false</code></strong> -->
   1\. In `next.yml` `override` option must not be defined or set on `false`.
   2\. Copy **needed options** from both {% label info@site config file %} and {% label primary@theme config file %} into `hexo/source/_data/next.yml`.
   <!-- endtab -->

   <!-- tab <code>override: true</code> -->
   1\. In `next.yml` set `override` option on `true`.
   2\. Copy **all NexT theme options** from {% label primary@theme config file %} into `hexo/source/_data/next.yml`.
   <!-- endtab -->
   {% endsubtabs %}
3. Then, in main {% label info@site config file %} need to define `theme: next` option (and if needed, `source_dir: source`).
4. Use standart parameters to start server, generate or deploy (`hexo clean && hexo g -d && hexo s`).

<!-- endtab -->
{% endtabs %}
