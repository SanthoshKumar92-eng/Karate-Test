
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  Scenario: update users
   
    Given path 'api/users/2'
    And request { "name": "sandy", "job": "resident"}
    When method put
    Then status 200
    And print response