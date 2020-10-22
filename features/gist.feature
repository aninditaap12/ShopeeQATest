@gist
Feature: End to End test for Gist

Background: User already in gist url
Given I am on gist url

@create-public-gist 
Scenario: As a user, I want to create a public gist
Given user already logged in
When user clicks add icon
And user inputs Gist description
And user inputs filename including extension
And user inputs file content
And user creates public Gist
Then secret gist created

@edit-existing-gist
Scenario: As a user, I want to edit an existing gist
Given user already logged in
When user clicks Account menu
And user select Your Gists menu
And user select gist 
And user clicks Edit
And user edit description
And user edit file name
And user edit content
And user updates existing gist

@delete-existing-gist
Scenario: As a user, I want to delete an existing gist
Given user already logged in
When user clicks Account menu
And user select Your Gists menu
And user select gist 
And user clicks Delete
And user accept alert

@get-list
Scenario: As a user, I want to see my list of gist
Given user already logged in
When user clicks Account menu
Then user select Your Gists menu
And list of gist is displayed



