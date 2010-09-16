Feature: Clone
  Scenario: Get a clone without being saved
    Given an object in the database
    When I clone the object
    Then their attributes should be equal
    But the resulting object should be a new record
  Scenario: Get a saved clone
    Given an object in the database
    When I clone! the object
    Then their attributes should be equal
    And the resulting object should not be a new record