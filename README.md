# GraphQL Ruby

## Setup

```bash
bundle install
rails db:create db:migrate db:seed
rails s
```  

## GraphiQL
  
[http://localhost:3000/graphiql](http://localhost:3000/graphiql)

### Queries

```graphql
query {
  allLinks {
    id
    url
    description
  }
}
```

### Mutations

#### Create Link

```graphql
mutation {
  createLink(
    description: "Testing playground",
    url: "http://localhost:3000/graphiql"
  ) {
    id
    url
    description
    postedBy {
      id
      name
    }
  }
}
```

#### Create User

```graphql
mutation {
  createUser(
    name: "Test User",
    authProvider: {
      credentials: {
        email: "email@example.com",
        password: "123456"
      }
  	}
  ) {
    id
    name
    email
  }
}
```

#### Login User

```graphql
mutation {
  signinUser(credentials: {
    email: "email@example.com",
  	password: "123456"
  }) {
    token
  }
}
```
