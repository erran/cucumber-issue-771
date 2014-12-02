Feature: A nested file
  As a Cucumber user
  I want to use subdirectories
  So that I can better organize my feature files

  @sometag
  Scenario: A plain-old scenario
    Given I have a feature file
    And I wrote a scenario
    When I run `cucumber --tags @sometag`
    Then I should see cucumber run successfully
