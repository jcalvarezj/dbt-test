# dbt-test

A small dbt practice project

Datasets and model are based on https://github.com/anshlambagit/AnshLambaYoutube

## Requirements

The `uv` Python package manager should be installed globally in your system

Use `uv sync` to create and prepare a .venv virtual environment and then activate it

## Execution

Execute the `dbt build [--target <target name>]` command with an activated virtual environment inside the `dbt_example` folder to populate the source schema and materialize the models into the corresponding (existing) target catalog, of a Databricks DW accessible with the token specified with the environment variable `DBT_DATABRICKS_TOKEN`

This should create the corresponding Schemas and Catalogs for analytic querying (for example queries on [dbt_example/analyses/](dbt_example/analyses/)), and run several tests on tables
