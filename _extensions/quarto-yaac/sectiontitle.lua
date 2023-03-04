-- headers with class .sectiontitle should use \sectionTitle instead of \section
function Header(el)
  if quarto.doc.isFormat("pdf") then
    if el.classes:includes("sectiontitle") then
      if el.classes[2] then
        el.content = pandoc.utils.stringify(el.content)
        return {
          pandoc.RawBlock('latex', '\\sectionTitle{'
          .. el.content ..
          '}{\\'
          .. el.classes[2] ..
          '}')
          }
          else
            el.content = pandoc.utils.stringify(el.content)
            return {
              pandoc.RawBlock('latex', '\\sectionTitle{'
                .. el.content ..
                '}')
              
            }
      end
    end
  end
end
  