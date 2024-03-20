Feature: Web Login
  AS user I WANT to login the website SO THAT I can use all the site's features

  Background: login page
    Given User is looking at the login page

  @HappyPath
  Scenario: Request login via email verification code
    When User submits the log in form using his email
    And he chooses to log in via email verification
    Then he should receive an email with a authentication code
    And he should see a popup asking for the code

  Scenario: Login using email authorization code
    Given User requested to log in via email verification
    And he received its authorization code
    When he fills the authorization code
    Then he should be redirected to his account page

  Scenario: login with incorrect email
    And he accesses using an incorrect email
    Then he should see an error incorrect email format
