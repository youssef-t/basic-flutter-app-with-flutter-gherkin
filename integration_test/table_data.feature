Feature: Data table with JsonReporter
    Scenario: Data table with JsonReporter
        # We want to verify the values that are mentionned.
        # Null values will be ignored by the step. 
        Given I see the following users
            | name   | age | country |
            | Mike   | 20  | Spain   |
            | Robert |     | Italy   |