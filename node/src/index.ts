import { DatabaseInstance } from './database.instance';
import { createServer, IncomingMessage, ServerResponse } from 'http';

const server = createServer((req: IncomingMessage, res: ServerResponse) => {
  console.log("received request")
  res.end('Hello world!');
});

const database = new DatabaseInstance(
  {
    client: "mysql",
    connection: {
      host: "localhost",
      port: 3306,
      user: "user",
      password: "password",
      database: "migrations-test"
    }
  }
)

database.applyMigrations()

server.listen(9000);
console.log(`Server is listening at localhost:${ 9000 }`)
