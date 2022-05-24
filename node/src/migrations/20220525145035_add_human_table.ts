import { Knex } from "knex";


export async function up(knex: Knex): Promise<void> {
  knex.raw(`ALTER TABLE cats ADD PRIMARY KEY (id)`)
  return knex.raw(
    `CREATE TABLE humans
    (
      id INT NOT NULL AUTO_INCREMENT,
      name VARCHAR(255) NOT NULL,
      cat_id INT UNSIGNED,
      PRIMARY KEY(id),
      FOREIGN KEY (cat_id) REFERENCES cats (id) ON UPDATE NO ACTION ON DELETE NO ACTION
    );
    `
  )
}


export async function down(knex: Knex): Promise<void> {
  return knex.schema.dropTable("humans")
}

