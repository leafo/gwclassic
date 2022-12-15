LUAJIT ?= /usr/local/openresty/luajit/bin/luajit

# update the schema.sql from schema in dev db
schema.sql::
	pg_dump -s -U postgres gwtemp > schema.sql
	pg_dump -a -t lapis_migrations -U postgres gwtemp >> schema.sql

install_deps::
	luarocks --local --lua-version=5.1 build --only-deps # --server=https://luarocks.org/dev

# save a copy of dev database into dev_backup
checkpoint::
	mkdir -p dev_backup
	pg_dump -U postgres gwtemp | gzip > dev_backup/$$(date +%F_%H-%M-%S).sql.gz

annotate::
	lapis annotate models/*.moon

