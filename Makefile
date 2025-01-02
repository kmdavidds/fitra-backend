goose_conn=GOOSE_DRIVER=${DB_DRIVER} GOOSE_DBSTRING="postgres://${DB_USERNAME}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}"
migration_dir=./migrations/
goose_env=${goose_conn} GOOSE_MIGRATION_DIR=${migration_dir}

goose/up:
	@${goose_env} goose up

goose/status:
	@${goose_env} goose status

goose/down:
	@${goose_env} goose down-to 0

api:
	go run cmd/http/main.go