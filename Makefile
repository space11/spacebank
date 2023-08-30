postgres:
	docker run --name spacebankdb -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret  -d postgres:14.5-alpine

createdb:
	docker exec -it spacebankdb createdb --username=root --owner=root space_bank

dropdb:
	docker exec -it spacebankdb dropdb space_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/space_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/space_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

.PHONY: postgres createdb dropdb migrateup migratedown sqlc
