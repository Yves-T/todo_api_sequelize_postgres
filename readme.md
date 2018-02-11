## Todo API with Postgress and sequelize

## Setup

Build base docker image

```
docker build -t express-app .
```

Start the services with

```
docker compose-up
```

Get access to the terminal for the app container and execute the migration

```
docker exec -it app  /bin/sh
npx sequelize-cli db:migrate
```

### Endpoints

Different endpoints are available. If you run this locally add http://localhost:8080 in front of each endpoint.

#### todos

* Get todos: GET /api/todos
* Retreive single todo: GET /api/todos/:todoId
* Create a todo: POST /api/todos
* Update a todo : PUT api/todos/:todoId

#### todoItems

* Add a todo item to an existing todo: POST api/todos/:todoId/items
* Update todo item associated to a todo: PUT /api/todos/:todoId/items/:todoItemId
* Delete a todo item in an associated todo: DELETE /api/todos/:todoId/items/:todoItemId
