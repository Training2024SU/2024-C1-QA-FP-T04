Feature: Basic operations SOAP API
  AS an integration service I WANT to perform basic math operations
  SO THAT I can calculate quantities and prices

  Scenario Outline: covert number to words
    When The integration service requests to convert the number: <number> to letters
    Then he should get the answer in words: <answer>
    Examples:
      | number | answer    |
      | 1      | one       |
      | 0      | zero      |
      | -1     | minus one |

  Scenario: sum two integers
    When The integration service sends a request to sum the numbers "3" plus "5"
    Then he should get a success answer "8"

  Scenario: Sum invalid integers
    When The integration service sends a request to sum the numbers "b" plus "5"
    Then he should get a bad request error response

  Scenario: Multiply two integers
    When The integration service sends a request to multiply the numbers "4" times "8"
    Then he should get a success answer "32"