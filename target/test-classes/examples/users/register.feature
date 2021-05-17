
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  Scenario: register users api
   
    Given path 'api/register'
    And request {"email": "eve.holt@reqres.in","password": "pistol"}
    When method post
    Then status 200
    And print response