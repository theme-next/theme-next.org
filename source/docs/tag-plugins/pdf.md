---
title: PDF
description: NexT User Docs – NexT Supported Tags – PDF
---

### Settings

```yml next/_config.yml
pdf:
  enable: true
  # Default height
  height: 500px
  pdfobject:
    # Use 2.1.1 as default, jsdelivr as default CDN, works everywhere even in China
    cdn: //cdn.jsdelivr.net/npm/pdfobject@2.1.1/pdfobject.min.js
    # CDNJS, provided by cloudflare, maybe the best CDN, but not works in China
    #cdn: //cdnjs.cloudflare.com/ajax/libs/pdfobject/2.1.1/pdfobject.min.js
```

### Usage

```md pdf.js
{% pdf url [height] %}

[url]    : Relative path to PDF file.
[height] : Optional. Height of the PDF display element, e.g. 800px.
```

### Examples

```md
{% pdf https://example.com/sample.pdf %}
```

```md
{% pdf /path/to/your/file.pdf 600px %}
```
