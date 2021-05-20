
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  Scenario: get all users and then get the first user by id
    Given path 'api/users?page=2'
    When method get
    Then status 200
    And print response
 

    
    * def first_id = response.data[0].id
    Given path 'api/users/'+first_id
    When method get
    Then status 200
    And print response