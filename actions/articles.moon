import Articles from require "models"
import preload from require "lapis.db.model"

=>
  @pager = Articles\paginated "order by id asc", {
    per_page: 20
    prepare_results: (articles) ->
      preload articles, "author"
      articles
  }

  @articles = @pager\get_page!
  json: @articles

