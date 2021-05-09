
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  Scenario: delete users
   
    Given path 'api/users/2'
    When method delete
    Then status 204
    And print response