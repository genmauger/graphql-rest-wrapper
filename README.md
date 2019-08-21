# GRAPHQL RUBY REST WRAPPER

## ALL THE FUNCTIONALITY OF GRAPHQL, WITH A REST API

I've recently become interested in learning more about GraphQL. I've been very impressed with its ability to craft custom queries, and its in-built documentation. As I read more about it, however, I found most ruby-related resources were concerned with either:

- Building a GraphQL scheme from scratch, and more rarely,
- Using the graphql-client gem to make queries to external GraphQL clients

I found I was most interested in whether GraphQL functionality could be extended to apply to a REST-based API. The main benefits of this being that:
- GraphQL custom queries and self-documentation could be used for any REST-based api, meaning the use of GraphQL would not be limited by the design of the API endpoint
- GraqphQL could be used without the need to redesign REST based API structure

## App Functionality

The setup of the GraphQL types is set up to mirror the json structure of the JSON structure of the API endpoint. If the JSON API uses a nested system, each level is represnted by a new data type.

GraphQL uses resolvers. These are functions that can be added to certain queries that fire when a query is made. For example, when the `WeatherStationType` query is made, the `WeatherStation` resolver will run. This makes a call to the api, retrieves the response, and parses it as JSON. As long as the JSON structure fits the structure set out in the `WeatherStationType` the information will be returned in the form of a GraphQL query. 

There you have it, all the handy functionality of GraphQL, minus all the hassle of migrating a REST-based API to a GraphQL structure!

## To run the App
- Clone the repo to your local machine
- `bundle install`
- `rails s` to start server
- Navigate to the `/graphiql` route 
- Start using Graphiql to make your own custom queries

### Notes
- As GraphQL makes a single query to retrieve all data, we can now query multiple endpoints in a single query. Feel free to try it out! I've set up one endpoint for some weather station data, and another to retrieve a NY Times bestseller list. Wildly varying enpoints. Try making a query that includes information from both at once.

### To Come
- Add in id querying functionality
- Add in CRUD methods
- Create a frontend in React to display results


I hope you enjoy using this repo. Feel free to make your own changes and add more functionality
