SET search_path = public, pg_catalog;

--
-- ID sequence for the rule_subtype table.
--
CREATE SEQUENCE rule_subtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- A table to store rule subtypes.
--
CREATE TABLE rule_subtype (
    hid bigint DEFAULT nextval('rule_subtype_id_seq'::regclass) NOT NULL,
    id character varying(40) NOT NULL,
    name character varying(40) NOT NULL,
    description character varying(255) NOT NULL
);
