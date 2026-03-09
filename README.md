# dbt-test

A small dbt practice project that creates a medallion architecture in a Databricks Data Warehouse (up to silver tier)

Datasets and model are based on https://github.com/anshlambagit/AnshLambaYoutube

## Requirements

The `uv` Python package manager should be installed globally in your system

Use `uv sync` to create and prepare a .venv virtual environment and then activate it

## Configuration

The following environment variables are required:
- DBT_DATABRICKS_HOST
- DBT_DATABRICKS_HTTP
- DBT_DATABRICKS_TOKEN

## Execution

Execute the `dbt build [--target <target name>]` command with an activated virtual environment inside the `dbt_example` folder to populate the source schema and materialize the models into the corresponding (existing) target catalog

This should create the corresponding Schemas and Catalogs for analytic querying (for example queries on [dbt_example/analyses/](dbt_example/analyses/)), and run several tests on tables
