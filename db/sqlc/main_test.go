package db_test

import (
	"database/sql"
	"log"
	"os"
	"testing"

	_ "github.com/lib/pq"
	db "github.com/space11/spacebank/db/sqlc"
)

var testQueries *db.Queries

const (
	dbDriver = "postgres"
	dbSource = "postgresql://root:secret@localhost:5432/space_bank?sslmode=disable"
)

func TestMain(m *testing.M) {
	conn, err := sql.Open(dbDriver, dbSource)
	if err != nil {
		log.Fatal("cannot connect to db:", err)
	}

	testQueries = db.New(conn)
	os.Exit(m.Run())
}
