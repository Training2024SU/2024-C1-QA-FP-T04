@HappyPath
Feature: Obtain country information SOAP API
  AS an integration service I WANT to get information about a country

  Background: country Colombia
    Given The country code "CO"

  Scenario: Get country's currency
    When the integration service requests the country's currency info
    Then he should get a success answer with name: "Pesos" code: "COP"

  Scenario: Get country's flag
    When the integration service requests the country's flag image
    Then he should get a success answer with a link to the flag image

  Scenario: Get country's phone code
    When the integration service requests the country's currency info
    Then he should get a success answer with phone code: "57"
