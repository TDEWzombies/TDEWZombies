Feature: Manage Maps
	In Order to have a list of maps
	As a user
	I want to manage maps

	Scenario: Maps List
		Given I am on the home page
		Then I should see "Maps"
		And I should see "TDEW Zombies"

	Scenario: Click at new map button
		Given I am on the home page
		When I follow "New"
		Then I should see "New Map"

	Scenario: Validate enter requiered information
		Given I am on the home page
		When I follow "New"
		And  I press "Create Map"
		Then I should see "New Map"

	Scenario: Create a valida Map
		Given I am on the home page
		When I follow "New"
		And  I fill in "map_description" with "Desde cucumber"
		And  I put in "map_latitude" with "20"
		And  I put in "map_longitude" with "20"
		And  I press "Create Map"
		Then I should see "Map was successfully created."