
import { Knex, knex } from "knex"
import path from "path"

export type DatabaseConfiguration = {
  client: string
  connection: {
    host: string
    port: number
    user: string
    password: string
    database: string
  }
}

export class DatabaseInstance {
  readonly knex: Knex

  constructor(config: DatabaseConfiguration) {
    console.log(`Logging to DB ${config.connection.host}`)
    this.knex = knex({
      client: config.client,
      connection: config.connection,
    })
  }

  async applyMigrations() {
    const migrations = path.resolve(__dirname, "migrations")
    await this.knex.migrate.latest({ directory: migrations }).catch((reason) => {
      console.log("Unable to migrate DB", reason)
    })
  }
}