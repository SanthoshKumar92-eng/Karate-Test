
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    #* url 'https://reqres.in/'

  Scenario: post users
    # * def user =
    #   """
    #   {
    #    "name": "Anand",
    #    "job": "witmer"
    #   }
      
    #   """


    Given url 'https://reqres.in/api/users'
    #And request user
   
    And table reqbody
    |name|job|
    |"santhosh"|"witmer"|
    |"Sathya"|"Witmer"|

    And request reqbody
    When method post
    Then status 201
    And print response

    * def id = response.id
    * print 'created id is: ', id
    # And match response.job == 'leader'

    # Given path id
    # When method get
    # Then status 200
   
  