include karax / prelude

proc createDom(): VNode =
  result = buildHtml(h1):
    text "Hello World!"

setRenderer createDom
addStylesheet "style.css"