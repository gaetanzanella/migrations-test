import { Knex } from "knex";


export async function up(knex: Knex): Promise<void> {
  return knex.schema
  .createTable('cats', function (table) {
     table.increments('id');
     table.string('name', 255).notNullable();
  })
}

export async function down(knex: Knex): Promise<void> {
  return knex.schema.dropTable('cats')
}
