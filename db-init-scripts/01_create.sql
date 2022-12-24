GRANT ALL PRIVILEGES ON DATABASE wharp TO wharp;
CREATE SCHEMA IF NOT EXISTS assets;
ALTER DATABASE wharp SET search_path=public,assets;
GRANT ALL PRIVILEGES ON SCHEMA assets TO wharp;

CREATE EXTENSION postgis;

ALTER SYSTEM SET postgis.gdal_enabled_drivers TO 'GTiff PNG JPEG';
SELECT pg_reload_conf();

SET postgis.gdal_enabled_drivers TO 'GTiff PNG JPEG';
SET postgis.gdal_enabled_drivers = default;
SET postgis.gdal_enabled_drivers = 'ENABLE_ALL';

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
