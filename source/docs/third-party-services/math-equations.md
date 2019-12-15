---
title: Math Equations
description: NexT User Docs – Third-party Service Integration – Math Equations
mathjax: true
---

NexT provides two render engines for displaying Math Equations.

If you choose to use this feature, you don't need to manually import any JS or CSS. You just need to choose a render engine and turn on `enable` for it (located in {% label primary@theme config file %}).

{% note warning %}
Only turning on `enable` **cannot let you see the displayed equations correctly**, you need to install the **corresponding Hexo Renderer** to fully support the display of Math Equations. The corresponding Hexo Renderer per engine will be [provided below](#Render-Engines).
{% endnote %}

### Settings

```yml next/_config.yml
# Math Formulas Render Support
math:
  # Default (true) will load mathjax / katex script on demand.
  # That is it only render those page which has `mathjax: true` in Front-matter.
  # If you set it to false, it will load mathjax / katex srcipt EVERY PAGE.
  per_page: true

  # hexo-renderer-pandoc (or hexo-renderer-kramed) required for full MathJax support.
  mathjax:
    enable: true
    # See: https://mhchem.github.io/MathJax-mhchem/
    mhchem: false

  # hexo-renderer-markdown-it-plus (or hexo-renderer-markdown-it with markdown-it-katex plugin) required for full Katex support.
  katex:
    enable: false
    # See: https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex
    copy_tex: false
```

{% tabs mathjax-settings %}
<!-- tab <code>per_page</code> -->
This option is to control whether to render Math Equations every page.

* **`true`** → Equations will be processed on demand. It will only render those posts which have `mathjax: true` in their Front-matter.
* `false` → Equations will be processed on every page. Even if they not exists on one or another page.

{% note default %}
**Examples with `true` option **

```md
<!-- This post will render the Math Equations -->
---
title: Will Render Math
mathjax: true
---
....
```

```md
<!-- This post will NOT render the Math Equations -->
---
title: Not Render Math
mathjax: false
---
....
```

```md
<!-- This post will NOT render the Math Equations either -->
---
title: Not Render Math Either
---
....
```
{% endnote %}
<!-- endtab -->

{% endtabs %}

### Render Engines

For now, NexT provides two Render Engines: [MathJax](https://www.mathjax.org) and [KaTeX](https://khan.github.io/KaTeX/).

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

   ```bash
   $ npm un hexo-renderer-marked
   $ npm i hexo-renderer-kramed # or hexo-renderer-pandoc
   ```

2. In {% label primary@theme config file %}, choose `mathjax` as render engine.

   ```yml
   math:
     ...
     mathjax:
       enable: true
   ```

3. Run standard Hexo generate, deploy process or start the server:

   ```bash
   $ hexo clean && hexo g -d
   # or hexo clean && hexo s
   ```
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

    $ npm i markdown-it-katex

And then in {% label info@site config file %} you need to add `markdown-it-katex` as a plugin for `hexo-renderer-markdown-it`:

```yml
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
```
<!-- endtab -->
{% endtabs %}
{% endnote %}

{% note primary %}
**Installation**

1. Need to uninstall the original renderer `hexo-renderer-marked` and install one of selected by you renderer:

   ```bash
   $ npm un hexo-renderer-marked
   $ npm i hexo-renderer-markdown-it-plus # or hexo-renderer-markdown-it
   ```

2. In {% label primary@theme config file %}, choose `katex` as render engine.

   ```yml
   math:
     ...
     katex:
       enable: true
   ```

3. Run standard Hexo generate, deploy process or start the server:

   ```bash
   $ hexo clean && hexo g -d
   # or hexo clean && hexo s
   ```
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

`mhchem` is a third-party extension for MathJax, it's a tool for writing beautiful chemical equations easily. More infomation: [MathJax/mhchem Manual](https://mhchem.github.io/MathJax-mhchem/).

Copy-tex extension for KaTeX modifes the copy/paste behavior in any browser supporting the Clipboard API so that, when selecting and copying whole KaTeX-rendered elements, the text content of the resulting clipboard renders KaTeX elements as their LaTeX source surrounded by specified delimiters. More infomation: [Copy-tex extension](https://github.com/KaTeX/KaTeX/tree/master/contrib/copy-tex).

### Examples

{% note info %}
For examples below (and for all other examples in this domain) NexT uses `hexo-renderer-kramed` renderer with `mathjax` engine.
{% endnote %}

{% note danger %}
In some cases, the syntax of Markdown and TeX will conflict. For example, an underscore (`_`) may be interpreted as the start of italic text in Markdown, or subscripted mark in TeX. To avoid syntax errors, please use escape characters (`\_`) instead.
{% endnote %}

#### Numbering and referring equations in MathJax

In the new version of NexT, we have added feature to [automatic equation numbering](http://docs.mathjax.org/en/latest/tex.html#automatic-equation-numbering) with opportunity to make reference to that equations. We briefly describe how to use this feature below.

In general, to make the automatic equation numbering work, you have to wrap your LaTeX equations in `equation` environment. Using the plain old style (i.e., wrap an equation with two dollar signs in each side) will not work. How to refer to an equation? Just give a `\label{}` tag and then in your later text, use `\ref{}` or `\eqref{}` to refer it. Using `\eqref{}` is preferred since if you use `\ref{}`, there are no parentheses around the equation number. Below are some of the common scenarios for equation numbering.

#### Simple Equation

For simple equations, use the following form to give a tag,

```latex
$$\begin{equation} \label{eq1}
e=mc^2
\end{equation}$$
```

$$\begin{equation} \label{eq1}
e=mc^2
\end{equation}$$

Then, you can refer to this equation in your text easily by using something like:

```latex
The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...
```

The famous matter-energy equation $\eqref{eq1}$ proposed by Einstein...

#### Multi-line Equation

For multi-line equations, inside the `equation` environment, you can use the `aligned` environment to split it into multiple lines:

```latex
$$\begin{equation} \label{eq2}
\begin{aligned}
a &= b + c \\
  &= d + e + f + g \\
  &= h + i
\end{aligned}
\end{equation}$$
```

$$\begin{equation} \label{eq2}
\begin{aligned}
a &= b + c \\
  &= d + e + f + g \\
  &= h + i
\end{aligned}
\end{equation}$$

```latex
Equation $\eqref{eq2}$ is a multi-line equation.
```

Equation $\eqref{eq2}$ is a multi-line equation.

#### Multiple Aligned Equations

We can use `align` environment to align multiple equations. Each of these equations will get its own numbers.

```latex
$$\begin{align}
a &= b + c \label{eq3} \\
x &= yz \label{eq4}\\
l &= m - n \label{eq5}
\end{align}$$
```

$$\begin{align}
a &= b + c \label{eq3} \\
x &= yz \label{eq4}\\
l &= m - n \label{eq5}
\end{align}$$

```latex
There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.
```

There are three aligned equations: equation $\eqref{eq3}$, equation $\eqref{eq4}$ and equation $\eqref{eq5}$.

Since `align` in and of itself is a complete equation environment (read [here](https://tex.stackexchange.com/questions/95402/what-is-the-difference-between-aligned-in-displayed-mode-and-starred-align) about the difference between `aligned` and `align` in LaTeX). You do not need to wrap it with `equation` environment.

#### Exclude equations from numbering

In the `align` environment, if you do not want to number one or some equations, just use `\nonumber` right behind these equations. Like the following:

```latex
$$\begin{align}
-4 + 5x &= 2+y \nonumber  \\
 w+2 &= -1+w \\
 ab &= cb
\end{align}$$
```

$$\begin{align}
-4 + 5x &= 2+y \nonumber  \\
 w+2 &= -1+w \\
 ab &= cb
\end{align}$$

#### Use `\tag` to tag equations

Sometimes, you want to use more «exotic» style to refer your equation. You can use `\tag{}` to achieve this. For example:

```latex
$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$
```

$$x+1\over\sqrt{1-x^2} \tag{i}\label{eq_tag}$$

```latex
Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
```

Equation $\eqref{eq_tag}$ use `\tag{}` instead of automatic numbering.
