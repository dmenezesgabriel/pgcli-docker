# Pgcli, Docker & Docker Compose

Dockerized version of the pgcli tool for postgres.

## Why Docker?

Installing pgcli is a simple process, as long as you already have postgreSQL installed in your system. It's also possible to install it through `pip`, but on linux for example, there are some other requirements to meet:

Pgcli uses psycopg to talk to postgreSQL database. In order to install `psycopg2`, you will need to install `libpq` and `python-dev`. Since `psycopg2` is a C extension for Python, `gcc` it will also be necessary.

## Requirements

- Docker
- Docker Compose
- Make

## Usage

1. Create a `.env.db_name` based on `.env.template` replacing the desired variables
2. Build the image:
   ```sh
   make build
   ```
3. Run the container:
   ```sh
   export DB=db_name
   make run
   ```
