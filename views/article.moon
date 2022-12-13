

import sanitize_html from require "web_sanitize"
import types from require "tableshape"
import render_prop from require "lapis.eswidget.prop_types"

class Article extends require "views.widgets.page"
  @prop_types: {
    article: render_prop types.table
  }

  inner_content: =>
    raw sanitize_html @article.body
