Feature: As a user,
  I want to be able to see Volunteer opportunities

  Scenario: List courses
	  Given I am on the home page
	  Then I should see "Volunteer opportunities"
	  

Feature: Maps pin

  Scenario: User sees one pin on the map
    Given I am on the homepage
    Then I should see a pin on the map

	