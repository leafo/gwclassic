import Ivbmembers from require "models"

=>
  @pager = Ivbmembers\paginated "order by id asc", {
    per_page: 20
    fields: "*,
      to_timestamp(joined) at time zone 'utc' as joined_at,
      to_timestamp(last_post) at time zone 'utc' as last_post_at,
      to_timestamp(last_visit) at time zone 'utc' as last_visit_at,
      to_timestamp(last_activity) at time zone 'utc' as last_activity_at
    "
  }
  @users = @pager\get_page!
  json: @users

