Feature: Listing the current authors
  Background:
    Given my global Git configuration is setup with user "Global User"

  @wip
  Scenario: when no authors have been added
    Then `git pair` should display "Global User" in its author list
