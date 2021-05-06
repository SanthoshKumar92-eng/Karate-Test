Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'

  # Scenario: get all users and then get the first user by id
  #   Given path 'api/users'
  #   When method get
  #   Then status 200
  #   And print response.data[0].id
 

  #   * def first_id = response.data[0].id

  #   Given path 'api/users/'+first_id
  #   When method get
  #   Then status 200
  #   And print response

  Scenario: create a user and then get it by id
    # * def user =
    #   """
    #   {
    #    "name": "Anand",
    #    "job": "leader"
    #   }
      
    #   """


    Given url 'https://reqres.in/api/users'
    #And request user
   
    And table reqbody
    |name|job|
    |"Anand"|"leader"|

    And request reqbody[0]
    When method post
    Then status 201
    And print response

    * def id = response.id
    * print 'created id is: ', id
    # And match response.job == 'leader'

    # Given path id
    # When method get
    # Then status 200
   
  