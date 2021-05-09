
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  Scenario: login users
   
    Given path 'api/login'
    And request { "email": "eve.holt@reqres.in","password": "cityslicka"}
    When method post
    Then status 200
    And print response