Feature: Update a recipe
As an registered user,
I want to update a recipe 


@load-seed-data @US49

Scenario: User update a recipe
Given I am authenticated
When  I view a recipe
Then  I want to update a recipe

