Feature: As a user,
  I want to be able to see Volunteer opportunities

  @vcr @billy
  Scenario: User sees volunteer opportunities
	  Given I am on the homepage
	  Then I should see "Volunteer opportunities"

  @javascript @vcr @billy
  Scenario: User sees a map
    Given I am on the homepage
    Then I should see a map

  @javascript @vcr @billy
  Scenario: User sees particular pin on the map
    Given I am on the homepage
    Then I should see a pin on the map with Driver volunteer opportunity
