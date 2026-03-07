# dbt-test

A small dbt practice project

Datasets and model are based on https://github.com/anshlambagit/AnshLambaYoutube

## Requirements

The `uv` Python package manager should be installed globally in your system

Use `uv sync` to create and prepare a .venv virtual environment and then activate it

## Execution

Execute the `run.sh` script with an activated virtual environment to populate the source schema and materialize the models into an existing `dbt_example_dev` catalog of a Databricks DW

This should create the corresponding Schemas and Catalogs for analytic querying (for example queries on [dbt_example/analyses/](dbt_example/analyses/)), and run several tests on tables
