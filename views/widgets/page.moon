class Page extends require "views.widgets.base"
  @widget_class_name: =>
    if @ == Page
      return "page_widget"

    "#{@widget_name!}_page"


