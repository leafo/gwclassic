db = require "lapis.db"
import Model from require "lapis.db.model"

-- Generated schema dump: (do not edit)
--
-- CREATE TABLE gwtemp.gw_topics (
--   id bigint NOT NULL,
--   title character varying(99) DEFAULT ''::character varying NOT NULL,
--   summary text NOT NULL,
--   category character varying(99) DEFAULT ''::character varying NOT NULL,
--   unixname character varying(20) DEFAULT ''::character varying NOT NULL
-- );
-- ALTER TABLE ONLY gwtemp.gw_topics
--   ADD CONSTRAINT idx_19268577_primary PRIMARY KEY (id);
--
class GwTopics extends Model
