CREATE DATABASE events_db;

CREATE DATABASE read_model_db;

\c events_db;
CREATE SCHEMA IF NOT EXISTS ttk_collector;

CREATE SCHEMA IF NOT EXISTS fb_collector;

\c read_model_db;
CREATE SCHEMA IF NOT EXISTS public;