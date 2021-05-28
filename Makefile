all:
	make test

test:
	docker-compose up -V -d postgres
	until pg_isready --host localhost --port 5432; do \
		sleep 0.1; \
	done
	echo "my test here"
	docker-compose down
