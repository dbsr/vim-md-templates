fu! md_templates#getTemplateSnippets(bpath)
  let templates = system('find ' . a:bpath . ' -maxdepth 1 -name "*.mdt"')
  let snippets = []
  for template in split(templates, '\n')
    let value = system('cat ' . template)
    let trigger = system("echo -n $(basename " . template . ")")
    call add(snippets, [trigger, value])
  endfor
  return snippets
endf
