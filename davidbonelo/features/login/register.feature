Feature: Web registration
  AS user I WANT to register in the website SO THAT I get an account to use in the site

  Background: register with new email
    Given User is looking at the login page
    And he accesses using a new email
    Then he should get redirected to the registration page with his email filled

  @HappyPath
  Scenario: Successful registration with new email
    When User completes registration with correct data
    Then he should get redirected to the home page
    And he should see the logout option

  Scenario Outline: Register with missing fields
    When User fills the form with the data <name> <lastName> <phone>
    Then he shouldn't be allowed to submit the form
    And he sees a warning on the missing fields
    Examples:
      | name    | lastName | phone      |
      |         | PruebaA  | 3027759029 |
      | PruebaA |          | 3027759029 |
      | PruebaA | PruebaA  |            |
      | PruebaA | PruebaA  | 302775902  |
