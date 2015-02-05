Feature: User sessions
  Scenario: A user can log in
    Given the following user:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    And I am on the log in page
    When I fill in the following:
      | E-Mail   | dan@example.com |
      | Password | pass            |
    And I press "Log In"
    Then I should see "Successfully logged in."

  Scenario: A user can log in
    Given the following user:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    And that user is logged in
    And I am on the home page
    When I follow "Log Out"
    Then I should see "Successfully logged out."
    And I should see "Log In"

  Scenario: An anonymous user can create a new account
    Given I am on the home page
    When I follow "Sign Up"
    And I fill in the following:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    And I press "Sign Up"
    Then I should see "Account successfully created."
    And I should see "Log Out"
