Feature: that should fail
  This feature should fail because it has a missing step definition

  Scenario: This scenario should pass
    Then this scenario took 1 second to run

  Scenario: This scenario should fail because it has a missing step definition
    Then this scenario took 1 second to run
     And I have a missing step definition


  Scenario Outline: This scenario outline should pass because it doesnt have a missing step definition
    Then this scenario took <seconds> second to run

     Examples:
       | seconds |
       | 1       |
       | 2       |


  Scenario Outline: This scenario outline should fail because it has a missing step definition
    Then this scenario took 1 second to run
     And I have a missing step definition "<whatever>"

     Examples:
       | whatever |
       | aaaaa    |
       | bbbbbb   |


  Scenario Outline: This scenario outline should fail because it has an example that fails
    Then this step <does>

     Examples:
       | does   |
       | fails  |
       | passes |
