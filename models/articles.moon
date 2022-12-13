
import Model from require "lapis.db.model"

-- Generated schema dump: (do not edit)
--
-- CREATE TABLE gwtemp.articles (
--   id bigint NOT NULL,
--   title character varying(50) DEFAULT NULL::character varying,
--   summary text,
--   body text,
--   author bigint,
--   date bigint,
--   topic_id bigint,
--   feature character varying(10) DEFAULT ''::character varying NOT NULL,
--   views bigint DEFAULT '0'::bigint NOT NULL,
--   series_id bigint DEFAULT '0'::bigint NOT NULL
-- );
-- ALTER TABLE ONLY gwtemp.articles
--   ADD CONSTRAINT idx_19268566_primary PRIMARY KEY (id);
-- CREATE INDEX idx_19268566_id ON gwtemp.articles USING btree (id);
--
class Articles extends Model
