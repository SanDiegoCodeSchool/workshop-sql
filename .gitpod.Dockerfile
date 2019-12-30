# using the gitpod sql workspace
FROM gitpod/workspace-mysql

# flex on em
USER gitpod

# run db and table creation script
RUN mysql -u root < data/sakila-schema.sql

# run data insertion
RUN mysql -u root < data/sakila-data.sql

# load up that sweet sweet executeable
ENTRYPOINT ["mysql"]