-- Remplace « @nom-de-diapo » par le numéro de la diapo qui a l'identifiant #nom-de-diapo.
-- La page de titre est la diapo 1 ; chaque titre de niveau 1 ou 2 commence une nouvelle diapo.
function Pandoc(doc)
  local numeros = {}
  local n = 1
  for _, bloc in ipairs(doc.blocks) do
    if bloc.t == "Header" and bloc.level <= 2 then
      n = n + 1
      if bloc.identifier ~= "" then numeros[bloc.identifier] = n end
    end
  end
  return doc:walk({
    Str = function(el)
      local texte = el.text:gsub("@([%w%-]+)", function(id)
        if numeros[id] then return tostring(numeros[id]) end
        return "@" .. id
      end)
      if texte ~= el.text then return pandoc.Str(texte) end
    end
  })
end
