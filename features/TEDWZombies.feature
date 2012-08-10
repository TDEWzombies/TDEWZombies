Feature: Manage Maps
	In Order to have a list of maps
	As a user
	I want to manage maps

	Scenario: Maps List
		Given I am on the home page
		Then I should see "Maps"
		And I should see "TDEW Zombies"

	Scenario: Click new map button
		Given I am on the home page
		When I follow "New"
		Then I should see "New Map"

	Scenario: Validate requiered information for a new map
		Given I am on the home page
		When I follow "New"
		And  I press "Create Map"
		Then I should see "New Map"

	Scenario: Create a new valid Map
		Given I am on the home page
		When I follow "New"
		And  I fill in "map_description" with "Desde cucumber"
		And  I put in "map_latitude" with "-12.10109666094"
		And  I put in "map_longitude" with "-77.0318036583984"
		And  I press "Create Map"
		Then I should see "Map was successfully created."