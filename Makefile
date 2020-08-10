
default: help

POSTGRES_CONTAINER?=sci_db

init:
	docker-compose down && docker-compose up -d
	@echo "Waiting for database connection ..."
	@while ! docker exec $(POSTGRES_CONTAINER) pg_isready -U postgres -p 5432 > /dev/null; do \
	sleep 1; \
	done
	mix ecto.create
	mix ecto.migrate
	mix run priv/repo/seeds.exs
dev: 
	mix phx.server	
test:
	mix test 
	
dep: 
	mix deps.get
help: 
	@grep "#:" Makefile* | grep -v "@grep" | sort | sed "s/\([A-Za-z_ -]*\):.*#\(.*\)/$$(tput setaf 3)\1$$(tput sgr0)\2/g"