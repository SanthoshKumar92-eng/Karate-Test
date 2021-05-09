@ignore
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support
  Scenario: authenticate users 
    Given url 'https://witmer-ai.atlassian.net/'
    And header Authorization = call read('../../basic-auth.js') { username: 'santhosh.k@witmer.ai', password: '1hxifMC9Skm6lPoeuBrA75A1' }
    And path 'jira/people/5f90f973461cc4007537324e'
    When method get
    Then status 200
    