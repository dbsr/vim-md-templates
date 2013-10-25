if(!exists('s:templateSnippets'))
  let s:templateSnippets = []
endif

echo s:templateSnippets

let bpath = expand('%:p:h')
for tpl in md_templates#getTemplateSnippets(bpath)
  let trigger = tpl[0]
  let value = tpl[1]
  if index(s:templateSnippets, value) == -1
    call add(s:templateSnippets, value)
    call UltiSnips_AddSnippet(trigger, value, trigger . ' template', 'b', 'markdown')
  endif
endfor
