FROM postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_USER postgres
COPY ./sql_ddl/init_db.sql /docker-entrypoint-initdb.d/init_db.sql
COPY ./sql_ddl/schema.sql /docker-entrypoint-initdb.d/schema.sql
COPY ./sql_dml/seed.sql /docker-entrypoint-initdb.d/seed.sql