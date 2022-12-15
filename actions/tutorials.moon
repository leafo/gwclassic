import Tutorials from require "models"

=>
  @pager = Tutorials\paginated per_page: 20
  @tutorials = @pager\get_page!
  json: @tutorials


