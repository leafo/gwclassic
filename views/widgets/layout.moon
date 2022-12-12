
class Layout extends require "views.widgets.base"
  content: =>
    html_5 {
      lang: "en"
    }, ->
      @content_for "inner"
