---
title: NexT 6.7.0 Released
date: 2019-01-01 07:59:33 
---

> \\(^_^)/ Happy New Year!

## Breaking Changes

### Rename `theme.vendors.Han` to `theme.vendors.han` ([#512](https://github.com/theme-next/issue/512))

#### Old configuration:

```diff
vendors:
...
  # Internal version: 3.3.0
  # See: https://github.com/ethantw/Han
- Han:
```

#### New configuration:

```yml
vendors:
...
  # Internal version: 3.3.0
  # See: https://github.com/ethantw/Han
  # Example:
  # han: //cdn.jsdelivr.net/npm/han-css@3/dist/han.min.css
  # han: //cdnjs.cloudflare.com/ajax/libs/Han/3.3.0/han.min.css
  han:
```

## Features

- Fix [#553](https://github.com/theme-next/issue/553) New Feature: mhchem support ([#554](https://github.com/theme-next/issue/554))
- Format code & update CDN URLs & fix [#269](https://github.com/theme-next/issue/269) (copy_tex for KaTeX) ([#543](https://github.com/theme-next/issue/543))
- Add toc max_depth support ([#528](https://github.com/theme-next/issue/528))
- Reorganize [#274](https://github.com/theme-next/issue/274) Custom logo for Gemini & Pisces ([#520](https://github.com/theme-next/issue/520))
- Added `post_edit` option on pages & Maked some refactoring. ([#499](https://github.com/theme-next/issue/499))

## Optimizations

- Updated site link & small corrections. ([#518](https://github.com/theme-next/issue/518))
- Refactored post navigation styles. ([#509](https://github.com/theme-next/issue/509))
- Conditional import Han style. ([#507](https://github.com/theme-next/issue/507))


## Bug Fixes

- Bug fix in scripts/tags/tabs.js ([#558](https://github.com/theme-next/issue/558))
- Fixed b2t to work on all schemes ([#552](https://github.com/theme-next/issue/552))
- Fix [#48](https://github.com/theme-next/issue/48) Footer position ([#550](https://github.com/theme-next/issue/550))
- Fix [#481](https://github.com/theme-next/issue/481) Google Calendar ([#549](https://github.com/theme-next/issue/549))
- Fix [#508](https://github.com/theme-next/issue/508) Reward comment position bug ([#546](https://github.com/theme-next/issue/546))
- Fix [#271](https://github.com/theme-next/issue/271) CDN URL for leancloud ([#541](https://github.com/theme-next/issue/541))
- Fix localsearch wrong article url ([#540](https://github.com/theme-next/issue/540))
- Fix [#537](https://github.com/theme-next/issue/537) The algolia search pagination's opacity is 0 ([#538](https://github.com/theme-next/issue/538))
- Fix [#181](https://github.com/theme-next/issue/181) and [#333](https://github.com/theme-next/issue/333) Right margin bug in mobile style ([#534](https://github.com/theme-next/issue/534))
- Fix [#531](https://github.com/theme-next/issue/531), format code in _config.yml ([#532](https://github.com/theme-next/issue/532))
- Fix for metadata generation at index ([#529](https://github.com/theme-next/issue/529))
- Fix inline code font-size mismatch within headers ([#514](https://github.com/theme-next/issue/514))
- Fix [#364](https://github.com/theme-next/issue/364) Copy code on mobile platform ([#489](https://github.com/theme-next/issue/489))
- Fixed Disqus URL. Again. A little bit hard. ([#506](https://github.com/theme-next/issue/506))
- Fixed Disqus bug if in permalink exists symbol «'» . ([#504](https://github.com/theme-next/issue/504))
- Fixed W3 validator errors. ([#501](https://github.com/theme-next/issue/501))
- Added `disable_baidu_tranformation` option. ([#500](https://github.com/theme-next/issue/500))
- Fixed sidebar under Pisces / Gemini schemes for IE 11. ([#498](https://github.com/theme-next/issue/498))
- Fix submenu when path name is same ([#497](https://github.com/theme-next/issue/497))
- Menu external url ([#476](https://github.com/theme-next/issue/476))
- Fix [#495](https://github.com/theme-next/issue/495), [#473](https://github.com/theme-next/issue/473) and [#231](https://github.com/theme-next/issue/231) `url_for()` misuse ([#496](https://github.com/theme-next/issue/496))
- Improve highlighting for Lisps ([#493](https://github.com/theme-next/issue/493))
- Define "builtin-name" for Lisp languages ([#492](https://github.com/theme-next/issue/492))

***

For full changes, see the [comparison between 6.6.0 and 6.7.0](https://github.com/theme-next/hexo-theme-next/compare/v6.6.0...v6.7.0)

[Detailed changes for NexT v6.7.0](https://github.com/theme-next/hexo-theme-next/releases/tag/v6.7.0)