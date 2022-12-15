
db = require "lapis.db"
schema = require "lapis.db.schema"

{
  =>
    -- update date field on articles
    db.query "alter table articles rename column date to created_at"
    db.query "alter table articles alter column created_at type #{schema.types.time null: true} using to_timestamp(created_at) at time zone 'utc'"

    db.query "alter table articles rename column author to author_id"

  =>
    db.query "alter table tutorials rename column writer_id to author_id"
}