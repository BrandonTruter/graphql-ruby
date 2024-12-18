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

```graphql
mutation {
  createLink(
    description: "Best tools!",
    url: "http://npmjs.com/package/graphql-tools"
  ) {
    id
    url
    description
  }
}
```
