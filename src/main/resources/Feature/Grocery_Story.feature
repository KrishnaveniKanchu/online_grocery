Feature: Grocery Store Management API Testing

  Scenario: User Registration
    Given the API is running
    When I register a new user with username "NewUser" and email "newuser@example.com"
    Then the user should be successfully registered with status code 201

  Scenario: User Login
    Given the API is running
    When I log in with username "Vanitha" and password "Vanitha123"
    Then the login should be successful with status code 200

  Scenario: Add a new product
    Given the API is running
    When I add a product with name "Lotion", category "Body Care", price 150.0, and stock quantity 100
    Then the product should be successfully added with status code 201

  Scenario: Search for a product
    Given the API is running
    When I search for products with name "Shampoo"
    Then I should get the product details with status code 404

  Scenario: Place an order
    Given the API is running
    When I place an order with userId 1, productId 1, quantity 5, and totalPrice 500.0
    Then the order should be successfully created with status code 404

  Scenario: Delete a user by user ID
    Given the API is running
    When I delete the user with ID 7
    Then the user should be successfully deleted with status code 400
    
  Scenario: Filter products by category
    Given the API is running
    When I filter the products by category "Body Care"
    Then I should receive a list of products in the "Body Care" category with status code 200
