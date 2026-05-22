
-- =============================================================================
-- Script:      init_database.sql
-- Description: Initializes the DataWarehouse database with Bronze, Silver,
--              and Gold schemas following the Medallion Architecture pattern.
--
--              Bronze  -> Raw ingested data (source as-is)
--              Silver  -> Cleaned and validated data
--              Gold    -> Business-ready aggregated/modeled data
--
-- Usage:       Run this script once during initial environment setup.
--              WARNING: DROP statements will remove existing database/schemas.
-- =============================================================================

USE master;
GO

-- =============================================================================
-- Step 1: Drop and recreate the DataWarehouse database
-- =============================================================================
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- =============================================================================
-- Step 2: Create Bronze schema (raw/landing layer)
-- =============================================================================
CREATE SCHEMA bronze;
GO

-- =============================================================================
-- Step 3: Create Silver schema (cleansed/conformed layer)
-- =============================================================================
CREATE SCHEMA silver;
GO

-- =============================================================================
-- Step 4: Create Gold schema (business/reporting layer)
-- =============================================================================
CREATE SCHEMA gold;
GO

