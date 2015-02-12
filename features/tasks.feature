Feature: Tasks
  Background:
    Given the following user:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    And that user is logged in

  Scenario: A user can create a task
    Given I am on the home page
    When I follow 'New Task'
    And I fill in the following:
      | Name   | Task     |
      | Date   | 1/2/2015 |
      | Points | 10       |
    And I press "Create Task"
    Then I should see "Task successfully created."

  Scenario: A user can delete a task

  Scenario: A user can complete a task

  Scenario: Tasks are repeatable

  Scenario: Tasks can be recurring (daily, weekly, monthly)
