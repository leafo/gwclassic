
config = require "lapis.config"

config {"development", "production"}, ->
  postgres {
    database: "gwtemp"
  }