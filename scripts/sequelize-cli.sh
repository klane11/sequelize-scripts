# Creates a db-migrate migration in the database migrations folder
# $1 = the name of the table you want to create, example: users
# $2 = the attributes in that table, example: first_name:string,last_name:string,email:string,phone_number:integer
create-migration-model() {
  sequelize model:generate --name $1 --attributes $2,deleted_at:date --underscored
}

# Creates a migration in the migrations folder, used if editing a table
create-migration() {
	sequelize migration:generate --name $1
}

# Runs all your un-ran migrations to the database, from where it last left off.
migration-up() {
  sequelize db:migrate
}

# Runs the down migration on only the previous migration that was last ran up.
migration-down() {
 sequelize db:migrate:undo
}

# Runs all the down migrations in the migration folder
migration-reset() {
  sequelize db:migrate:undo:all
}

drop-create-migrate() {
  dropdb $1
  createdb $1
  migration-up
}

# Creates a seed file for your database
create-seed() {
  sequelize seed:generate --name $1
}

# Inputs all the seeds to your database
seed-up() {
  sequelize db:seed:all
}

# Takes down the last seed you inserted into your database
seed-down() {
  sequelize db:seed:undo
}

# Erases all the seeds inside your database
seed-reset() {
  sequelize db:seed:undo:all
}
