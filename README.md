vim-md-templates
================

> markdown templates using ultisnips


example.mdt
```markdown
#${1:title}

> ${2: quote}

1. List item: ${3: list}
```

new_markdown_document.md
```
example.mdt<c-j>
*SNIP*
```
