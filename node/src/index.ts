import { createServer, IncomingMessage, ServerResponse } from 'http';

const server = createServer((req: IncomingMessage, res: ServerResponse) => {
  console.log("received request")
  res.end('Hello world!');
});

server.listen(9000);
console.log(`Server is listening at localhost:${ 9000 }`)
