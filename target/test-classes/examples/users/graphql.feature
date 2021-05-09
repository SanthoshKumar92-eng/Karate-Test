Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    

  Scenario: graphql
   
    Given url 'https://api.graphql.jobs/'
    * text querybody =
    """
        query {
           jobs {
              title
            }
        }
    """
    And request { query : '#(querybody)'}
    When method post
    Then status 200
    #And print response