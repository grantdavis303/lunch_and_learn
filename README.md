# Lunch and Learn

### There is currently no live deployment of this application.

### About

Lunch and Learn is an API.

### Setup

```
[Fork and clone this repository]

bundle install
rails db:{drop,create,migrate,seed}
```

### Versions

- Ruby 3.2.2
- Rails 7.1.2

### APIs Used

Rest Countries API
Edamam Recipe Search API

### Exposed End Points

End Point 1
`GET /api/v1/recipes?country=[query]`

End Point 2
`GET /api/v1/learning_resources?country=[query]`

### Progress

2 / 7 Tickets Completed

- [x] Initial Setup
- [x] End Point 1 - Get Recipes For A Particular Country
- [x] End Point 2 - Get Learning Resources for a Particular Country
- [ ] End Point 3 - User Registration
- [ ] End Point 4 - 
- [ ] End Point 5 - 
- [ ] End Point 6 -

### Goals

Overall Goal

- [ ] A user should be able search for cuisines by country and should also be able to learn more about that country's culture.

The user should be able to:

- [ ] Search for recipes by country
- [ ] Mark specific recipes as 'favorite'
- [ ] Learn more about a particular country

Learning Goals

- [ ] Expose an API that aggregates data from multiple external APIs
- [ ] Expose an API that requires an authentication token
- [ ] Implement basic authentication
- [ ] Expose an API for CRUD functionality
- [ ] Determine completion criteria based on the needs of other developers
- [ ] Test both API consumption and exposure, and use one mocking tool(VCR, Webmock)

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

- [ ] Project achieves 90% or greater test coverage. 
- [ ] In addition to “happy path”, project also includes “sad path”/edge case testing. 
- [ ] At least one of the tests that require an external API call make use of VCR and/or Webmock for mocking. 
- [ ] Tests check payload content a little deeper such as inspecting data type of an attribute. 
- [ ] Testing also checks that unnecessary information is NOT present in response data.

### Tests

* 34 Total Tests (415 / 418 LOC (99.28%) covered)

* 6 Request Tests (187 / 190 LOC (98.42%) covered)
* 10 Facade Tests (169 / 169 LOC (100.0%) covered)
* 16 Service Tests (160 / 160 LOC (100.0%) covered)
* 2 PORO Tests (69 / 69 LOC (100.0%) covered)

### Resources

No resources used for this project.

### Contributors

* Grant Davis | [GitHub](https://github.com/grantdavis303), [LinkedIn](https://www.linkedin.com/in/grantdavis303/)




Explore Redis for caching api query to RC API?
Make sure to add fields that AREN'T in the response - US1