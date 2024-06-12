# Lunch and Learn

### There is currently no live deployment of this application.

### About

Lunch and Learn is a pure backend RoR API designed to provide information about cuisines and popular tourist sites for a particular country. This API is to be paired with a frontend application where a user can create an account, log in to their account, search for recipes, favorite recipes, as well as find videos and photos for a country.

### Setup

```
[Fork and clone this repository]
cd lunch_and_learn

bundle install
rails db:{drop,create,migrate,seed}
rails s

[Open Postman]
[Test end points below with localhost:3000]

Ex. GET http://localhost:3000/api/v1/recipes?country=germany
```

### Versions

- Ruby 3.2.2
- Rails 7.1.2

### Utilized APIs

* Edamam's Recipe Search API
* Google's YouTube Video Search API
* Rest Countries' All Countries API
* Unsplash's Image Search API
* Geoapify's Places API and Geocoding API

### Exposed End Points

End Point 1 - Get Recipes For A Particular Country

```
GET /api/v1/recipes?country=[query]
```

End Point 2 - Get Learning Resources for a Particular Country

```
GET /api/v1/learning_resources?country=[query]
```

End Point 3 - User Registration

```
POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "name": "Odell",
  "email": "goodboy@ruffruff.com",
  "password": "treats4lyf",
  "password_confirmation": "treats4lyf"
}
```

End Point 4 - Log In User

```
POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "goodboy@ruffruff.com",
  "password": "treats4lyf"
}
```

End Point 5 - Add Favorites

```
POST /api/v1/favorites
Content-Type: application/json
Accept: application/json

{
    "api_key": "jgn983hy48thw9begh98h4539h4",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
}
```

End Point 6 - Get a User’s Favorites

```
GET /api/v1/favorites?api_key=[valid api key]
Content-Type: application/json
Accept: application/json
```

End Point 7 (Bonus) - Get Tourist Sites For A Particular Country

```
GET /api/v1/tourist_sites?country=[query]
Content-Type: application/json
Accept: application/json
```

### Progress

7 / 7 Tickets Completed

- [x] Initial Setup
- [x] End Point 1 - Get Recipes For A Particular Country
- [x] End Point 2 - Get Learning Resources for a Particular Country
- [x] End Point 3 - User Registration
- [x] End Point 4 - Log In User
- [x] End Point 5 - Add Favorites
- [x] End Point 6 - Get a User’s Favorites

### Goals

Overall Goal

- [x] A user should be able search for cuisines by country and should also be able to learn more about that country's culture.

The user should be able to:

- [x] Search for recipes by country
- [x] Mark specific recipes as 'favorite'
- [x] Learn more about a particular country

Learning Goals

- [x] Expose an API that aggregates data from multiple external APIs
- [x] Expose an API that requires an authentication token
- [x] Implement basic authentication
- [x] Expose an API for CRUD functionality
- [x] Determine completion criteria based on the needs of other developers
- [x] Test both API consumption and exposure, and use one mocking tool (VCR, Webmock)

Technical Presentation

- [ ] Student presents their code and is able to talk about all of the presentation points below.

Presentation Points

- [ ] Demonstration of understanding for project’s learning goals
- [ ] Demonstration of functional completeness using Postman and live demo
- [ ] Discussion of technical quality & code organization
- [ ] Discussion of test coverage (happy and sad path and edge case testing)

Feature Delivery

- [ ] API satisfies the exact needs of the frontend developers. No unnecessary information is sent in a response.

Technical Quality

- [ ] Project demonstrates abstraction and encapsulation in ways that make it easy to change (example: if an API changes, for example, FLickr to Unsplashed, we make changes in as few places as possible.).
- [ ] Project shows a solid understanding of MVC principles (this may include but is not limited to: no logic in serializers, clean controllers, serializers and presenters to handle formatting rather than models etc.) and includes all expectations of numbers 1 and 2 above.

Testing

- [x] Project achieves 90% or greater test coverage.
- [x] In addition to “happy path”, project also includes “sad path”/edge case testing.
- [x] At least one of the tests that require an external API call make use of VCR and/or Webmock for mocking.
- [x] Tests check payload content a little deeper such as inspecting data type of an attribute.
- [x] Testing also checks that unnecessary information is NOT present in response data.

### Tests

* 66 Total Tests (901 / 901 LOC (100.0%) covered)

* 18 Request Tests (503 / 503 LOC (100.0%) covered)
* 13 Facade Tests (229 / 229 LOC (100.0%) covered)
* 21 Service Tests (238 / 238 LOC (100.0%) covered)
* 3 PORO Tests (87 / 87 LOC (100.0%) covered)
* 11 Model Tests (70 / 70 LOC (100.0%) covered)

### Resources

No resources used for this project.

### Contributors

* Grant Davis | [GitHub](https://github.com/grantdavis303), [LinkedIn](https://www.linkedin.com/in/grantdavis303/)