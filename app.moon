lapis = require "lapis"

class GwClassic extends lapis.Application
  layout: "widgets.layout"

  [index: "/"]: true
  [article: "/articles/:id[%d]"]: true
  [articles: "/articles"]: true

