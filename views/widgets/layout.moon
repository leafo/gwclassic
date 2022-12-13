
SiteHeader = require "views.widgets.site_header"

class Layout extends require "views.widgets.base"
  content: =>
    html_5 {
      lang: "en"
    }, ->
      head ->
        meta charset: "UTF-8"
        link rel: "icon", type: "image/gif", href: "/static/favicon.gif"
        link rel: "stylesheet", href: "/static/main.css"
        title "Gaming World"

      body class: { @@widget_class_list! }, ->
        main class: "main", ->
          widget SiteHeader

          section class: "main_columns", ->
            div class: "leftmenu", ->
              div class: "nav", ->
                p "Gaming World"
                ul ->
                  li ->
                    a href: "", "Home"
                  li ->
                    a href: "", "Feedback"
                  li ->
                    a href: "", "Forums"
                  li ->
                    a href: "", "Search"
                  li ->
                    a href: "", "IRC Chat"

                p "Developers"
                ul ->
                  li ->
                    a href: "", "Resources"
                  li ->
                    a href: "", "Tutorials"
                  li ->
                    a href: "", "Articles"
                  li ->
                    a href: "", "Music"
                  li ->
                    a href: "", "Utilities"
                  li ->
                    a href: "", "Developer Directory"

                p "Articles"
                ul ->
                  li ->
                    a href: "", "Daily News"
                  li ->
                    a href: "", "News"

            div class: "content", ->
              @content_for "inner"

            div class: "right", ->
              h1 "Login"
              div class: "text", "Hello world"
              h1 "Daily News"
              div class: "text", "Hello world"
              h1 "Poll"
              div class: "text", "Hello world"
              h1 "GW Radio"
              div class: "text", "Hello world"
              h1 "Affiliates"
              div class: "text", "Hello world"

          section class: "site_footer", ->
            a href: "", "Join Gaming World"
            raw " &nbsp; "
            a href: "", "Website Statistics "
            raw " &nbsp; "
            a href: "", "About Gaming World "
            br!
            text "Gaming World © 2004"
