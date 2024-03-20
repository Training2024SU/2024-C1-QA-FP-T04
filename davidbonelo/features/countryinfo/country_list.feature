Feature: Obtain countries list SOAP API
  AS an integration service I WANT to get the list of countries

  Scenario: Get countries list with ISO code
    When The integration service requests the list of all countries
    Then he should get a successful response with the full list of countries and their corresponding ISO code

  # The api works only with uppercase iso codes
  @Exception
  Scenario: get country info using an incorrect iso code
    Given The country code "co"
    When the integration service requests the country's currency info
    Then he should get a not found error response
