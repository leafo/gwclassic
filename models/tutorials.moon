db = require "lapis.db"
import Model from require "lapis.db.model"

-- Generated schema dump: (do not edit)
--
-- CREATE TABLE gwtemp.tutorials (
--   id bigint NOT NULL,
--   title character varying(50) DEFAULT NULL::character varying,
--   summary text,
--   body text,
--   username character varying(50) DEFAULT NULL::character varying,
--   topic_id bigint DEFAULT '0'::bigint NOT NULL,
--   views bigint DEFAULT '0'::bigint NOT NULL,
--   writer_id bigint DEFAULT '0'::bigint NOT NULL
-- );
-- ALTER TABLE ONLY gwtemp.tutorials
--   ADD CONSTRAINT idx_19268636_primary PRIMARY KEY (id);
--
class Tutorials extends Model
