
class Layout extends require "views.widgets.base"
  content: =>
    html_5 {
      lang: "en"
    }, ->
      head ->
        link rel: "icon", type: "image/gif", href: "/static/favicon.gif"
        link rel: "stylesheet", href: "/static/main.css"

      body ->
        @content_for "inner"
