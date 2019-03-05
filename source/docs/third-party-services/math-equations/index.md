---
title: Math Equations
description: NexT User Docs – Third-party Service Integration – Math Equations
mathjax: true
---
NexT provides two render engines for displaying Math Equations.

If you choose to use this feature, you don't need to manually import any JS or CSS. You just need to turn on `enable` of `math` and define a render `engine` in {% label primary@theme config file %} for it.

### Settings

```yml next/_config.yml
# Math Equations Render Support
math:
  enable: false

  # Default(true) will load mathjax/katex script on demand
  # That is it only render those page who has `mathjax: true` in Front Matter.
  # If you set it to false, it will load mathjax/katex srcipt EVERY PAGE.
  per_page: true

  engine: mathjax
  #engine: katex

  # hexo-rendering-pandoc (or hexo-renderer-kramed) needed to full MathJax support.
  mathjax:
    # Use 2.7.1 as default, jsdelivr as default CDN, works everywhere even in China
    cdn: //cdn.jsdelivr.net/npm/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML
    # For direct link to MathJax.js with CloudFlare CDN (cdnjs.cloudflare.com)
    #cdn: //cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML

    # See: https://mhchem.github.io/MathJax-mhchem/
    #mhchem: //cdn.jsdelivr.net/npm/mathjax-mhchem@3
    #mhchem: //cdnjs.cloudflare.com/ajax/libs/mathjax-mhchem/3.3.0

  # hexo-renderer-markdown-it-plus (or hexo-renderer-markdown-it with markdown-it-katex plugin) needed to full Katex support.
  katex:
    # Use 0.7.1 as default, jsdelivr as default CDN, works everywhere even in China
    cdn: //cdn.jsdelivr.net/npm/katex@0.7.1/dist/katex.min.css
    # CDNJS, provided by cloudflare, maybe the best CDN, but not works in China
    #cdn: //cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css

    copy_tex:
      # See: https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex
      enable: false
      copy_tex_js: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.js
      copy_tex_css: //cdn.jsdelivr.net/npm/katex@0/dist/contrib/copy-tex.min.css
```

{% note danger %}
Don't forget to keep up [double spaces indents](/docs/troubleshooting/#Keep-up-indentation)!
{% endnote %}

{% tabs mathjax-settings %}
<!-- tab <code>enable</code> -->

* `true` → turn on Math Equations render.
* **`false`** → totally disable Math Equations render.

{% note warning %}
Only turning on `enable` of `math` cannot let you see the displayed equations correctly.
You need to install the corresponding Hexo Renderer to fully support the display of Math Equations.
The corresponding renderers per engine will be [provided below](#Render-Engines).
{% endnote %}
<!-- endtab -->

<!-- tab <code>per_page</code> -->
This option is to control whether to render Math Equations every page.

* **`true`** → Equations will be processed on demand. It will only render those posts which have `mathjax: true` in their Front Matter.
* `false` → Equations will be processed on every page. Even if they not exists on one or another page.

{% note default %}
**Examples with `true` option **

{% code lang:md %}
<!-- This post will render the Math Equations -->
---
title: Will Render Math
mathjax: true
---
....
{% endcode %}

{% code lang:md %}
<!-- This post will NOT render the Math Equations -->
---
title: Not Render Math
mathjax: false
---
....
{% endcode %}

{% code lang:md %}
<!-- This post will NOT render the Math Equations either -->
---
title: Not Render Math Either
---
....
{% endcode %}
{% endnote %}
<!-- endtab -->

<!-- tab <code>engine</code> -->

* **`mathjax`** → details in [mathjax tab below](#render-engines-1).
* `katex` → details in [katex tab below](#render-engines-2).

<!-- endtab -->

<!-- tab <code>cdn</code> -->
{% note success %}
Both MathJax and KaTeX provide `cdn` config and use the [jsDelivr](https://www.jsdelivr.com) as the default CDN.
The reason that jsDelivr is chosen is because it is fast everywhere, and jsDelivr has the valid ICP license issued by the Chinese government, it can be accessed in China pretty well.
{% endnote %}

{% note warning %}
And we also provide other optional CDNs, including the famous [CDNJS](https://cdnjs.com).
For MathJax, we are currently using version 2.7.1.
For KaTeX, due to the problem described above, we are now using version 0.7.1.
{% endnote %}

{% note danger %}
If you want to try the other CDNs not included in the optional list, you must use the corresponding version.
Particularly, if you are a Chinese blogger or most of your visits come from China, please note that the CDNJS is blocked in some parts of China, don't use it as your CDN.
{% endnote %}
<!-- endtab -->
{% endtabs %}

### Render Engines

For now, NexT provides two Render Engines: [MathJax](https://www.mathjax.org) and [KaTeX](https://khan.github.io/KaTeX/) (default is MathJax).

{% tabs render-engines %}
<!-- tab <strong><code>mathjax</code></strong> -->

{% note warning %}
**Render Choosing**

If you use MathJax to render Math Equations, you can choose one of renderers below:

* [hexo-renderer-kramed](https://github.com/sun11/hexo-renderer-kramed)
* [hexo-renderer-pandoc](https://github.com/wzpan/hexo-renderer-pandoc)

{% endnote %}

{% note primary %}
**Installation**

1. Need to uninstall the original renderer `hexo-renderer-marked` and install one of selected by you renderer:

   {% code lang:bash %}
   $ npm un hexo-renderer-marked --save
   $ npm i hexo-renderer-kramed --save # or hexo-renderer-pandoc
   {% endcode %}

2. In {% label primary@theme config file %}, turn on `enable` option of `math` and choose `katex` as render `engine`.

   {% code lang:yml %}
   math:
     enable: true
     ...
     engine: mathjax
     #engine: katex
   {% endcode %}

3. Run standard Hexo generate, deploy process or start the server:

   {% code lang:bash %}
   $ hexo clean && hexo g -d
   # or hexo clean && hexo s
   {% endcode %}
{% endnote %}
<!-- endtab -->

<!-- tab <code>katex</code> -->
{% note success %}
The [KaTeX engine is a much faster](https://www.intmath.com/cg5/katex-mathjax-comparison.php) math render engine compared to MathJax. And it could survive without JavaScript.
{% endnote %}

{% note danger %}
But, for now [KaTeX support less things](https://github.com/Khan/KaTeX/wiki/Things-that-KaTeX-does-not-%28yet%29-support) than MathJax. Here is a list of [TeX functions supported by KaTeX](https://khan.github.io/KaTeX/function-support.html).
{% endnote %}

{% note warning %}
**Render Choosing**

If you use KaTeX to render Math Equations, you can choose one of renderers below:

* [hexo-renderer-markdown-it-plus](https://github.com/CHENXCHEN/hexo-renderer-markdown-it-plus)
* [hexo-renderer-markdown-it](https://github.com/hexojs/hexo-renderer-markdown-it)

{% tabs hexo-renderer-markdown-it, -1 %}
<!-- tab {% label warning@Chosen hexo-renderer-markdown-it? %} -->
If you use `hexo-renderer-markdown-it`, you also need to add `markdown-it-katex` as its plugin:

    $ npm i markdown-it-katex --save

And then in {% label info@site config file %} you need to add `markdown-it-katex` as a plugin for `hexo-renderer-markdown-it`:

{% code lang:yml %}
# config of hexo-renderer-markdown-it
markdown:
  render:
    html: true
    xhtmlOut: false
    breaks: true
    linkify: true
    typographer: true
    quotes: '“”‘’'
  plugins:
    - markdown-it-katex
{% endcode %}
<!-- endtab -->
{% endtabs %}
{% endnote %}

{% note primary %}
**Installation**

1. Need to uninstall the original renderer `hexo-renderer-marked` and install one of selected by you renderer:

   {% code lang:bash %}
   $ npm un hexo-renderer-marked --save
   $ npm i hexo-renderer-markdown-it-plus --save # or hexo-renderer-markdown-it
   {% endcode %}

2. In {% label primary@theme config file %}, turn on `enable` option of `math` and choose `katex` as render `engine`.

   {% code lang:yml %}
   math:
     enable: true
     ...
     #engine: mathjax
     engine: katex
   {% endcode %}

3. Run standard Hexo generate, deploy process or start the server:

   {% code lang:bash %}
   $ hexo clean && hexo g -d
   # or hexo clean && hexo s
   {% endcode %}
{% endnote %}

{% note danger %}
**Known Issues**

1. Firstly, please check [Common Issues](https://github.com/Khan/KaTeX#common-issues) of KaTeX.
2. Displayed Math (i.e. ` $$...$$ `) needs to started with new clear line.
   In other words: you must not have any characters (except of whitespaces) **before the opening ` $$ ` and after the ending ` $$ `** ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
3. Don't support Unicode ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
4. Inline Math (..` $...$ `) must not have white spaces **after the opening ` $ ` and before the ending ` $ `** ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-357489509)).
5. If you use math in Heading (i.e. `## Heading`).
   Then in corresponding TOC item it will show the related LaTex code 3 times ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-359018694)).
6. If you use math in your post's title, it will not be rendered ([comment #32](https://github.com/theme-next/hexo-theme-next/pull/32#issuecomment-359142879)).
{% endnote %}

{% note info %}
We currently use KaTeX 0.7.1, some of those bugs might be caused by the outdated version of KaTeX we use.

But, as what is described in the beginning, the render of Math Equations relies on Hexo Renderer. Currently, KaTeX-related renderers only support KaTeX version until 0.7.1.

We will continuously monitor the updates of corresponding renderers, if there is a renderer which supports newer version of KaTeX, we will update the KaTeX we use.
{% endnote %}
<!-- endtab -->
{% endtabs %}

### Plugins

NexT also integrates some plugins for MathJax and KaTeX. You can easily configure them by setting the CDN URLs.

mhchem is a third-party extension for MathJax, it's a tool for writing beautiful chemical equations easily. More infomation: [MathJax/mhchem Manual](https://mhchem.github.io/MathJax-mhchem/).

Copy-tex extension for KaTeX modifes the copy/paste behavior in any browser supporting the Clipboard API so that, when selecting and copying whole KaTeX-rendered elements, the text content of the resulting clipboard renders KaTeX elements as their LaTeX source surrounded by specified delimiters. More infomation: [Copy-tex extension](https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex).

### Examples

{% note info %}
For examples below (and for all other examples in this domain) NexT uses `hexo-renderer-kramed` renderer with `mathjax` engine.
{% endnote %}

#### Numbering and referring equations in MathJax

In the new version of NexT, we have added feature to [automatic equation numbering](http://docs.mathjax.org/en/latest/tex.html#automatic-equation-numbering) with opportunity to make reference to that equations. We briefly describe how to use this feature below.

In general, to make the automatic equation numbering work, you have to wrap your LaTeX equations in `equation` environment. Using the plain old style (i.e., wrap an equation with two dollar signs in each side) will not work. How to refer to an equation? Just give a `\label{}` tag and then in your later text, use `\ref{}` or `\eqref{}` to refer it. Using `\eqref{}` is preferred since if you use `\ref{}`, there are no parentheses around the equation number. Below are some of the common scenarios for equation numbering.

#### Simple Equation

For simple equations, use the following form to give a tag,

{% code lang:latex %}
$$\begin{equation}
e=mc^2
\end{equation}\label{eq1}$$
{% endcode %}

$$\begin{equation}
e=mc^2
\end{equation}\label{eq1}$$

Then, you can refer to this equation in your text easily by using something like:

{% code lang:latex %}
The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...
{% endcode %}

The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...

#### Multi-line Equation

For multi-line equations, inside the `equation` environment, you can use the `aligned` environment to split it into multiple lines:

{% code lang:latex %}
$$\begin{equation}
\begin{aligned}
a &= b + c \\
  &= d + e + f + g \\
  &= h + i
\end{aligned}
\end{equation}\label{eq2}$$
{% endcode %}

$$\begin{equation}
\begin{aligned}
a &= b + c \\
  &= d + e + f + g \\
  &= h + i
\end{aligned}
\end{equation}\label{eq2}$$

{% code lang:latex %}
Equation $\eqref{eq2}$ is a multi-line equation.
{% endcode %}

Equation $\eqref{eq2}$ is a multi-line equation.

#### Multiple Aligned Equations

We can use `align` environment to align multiple equations. Each of these equations will get its own numbers.

{% code lang:latex %}
$$\begin{align}
a &= b + c \label{eq3} \\
x &= yz \label{eq4}\\
l &= m - n \label{eq5}
\end{align}$$
{% endcode %}

$$\begin{align}
a &= b + c \label{eq3} \\
x &= yz \label{eq4}\\
l &= m - n \label{eq5}
\end{align}$$

{% code lang:latex %}
There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.
{% endcode %}

There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.

Since `align` in and of itself is a complete equation environment (read [here](https://tex.stackexchange.com/questions/95402/what-is-the-difference-between-aligned-in-displayed-mode-and-starred-align) about the difference between `aligned` and `align` in LaTeX). You do not need to wrap it with `equation` environment.

#### Exclude equations from numbering

In the `align` environment, if you do not want to number one or some equations, just use `\nonumber` right behind these equations. Like the following:

{% code lang:latex %}
$$\begin{align}
-4 + 5x &= 2+y \nonumber  \\
 w+2 &= -1+w \\
 ab &= cb
\end{align}$$
{% endcode %}

$$\begin{align}
-4 + 5x &= 2+y \nonumber  \\
 w+2 &= -1+w \\
 ab &= cb
\end{align}$$

#### Use `\tag` to tag equations

Sometimes, you want to use more «exotic» style to refer your equation. You can use `\tag{}` to achieve this. For example:

{% code lang:latex %}
$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$
{% endcode %}

$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$

{% code lang:latex %}
Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
{% endcode %}

Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
