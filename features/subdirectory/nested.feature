@pry
Feature: A nested file
  As a Cucumber user
  I want to use subdirectories
  So that I can better organize my feature files

  Scenario: A plain-old scenario
    Given I have a feature file
    And I wrote a scenario
    When I run `cucumber features/subdirectory/nested.feature`
    Then I should see cucumber run successfully
