Feature: Registered user visits facebook and is able to login and access dashboard
  Background:
    Given bla bla bla
    #add steps that are repeated in scenerios here and remove them from scenario e.g when user clicks on login button
   #background runs first then scenerios. similar to before in junit
  Scenario: registered user visits facebook home page clicks login
    Given user is on home page
    #given is an intial step taken before running tests eg connect to db, open and browse url site
    When user clicks on login button
    And confirms he is not a robot
    #multiple And can be used for more actions
    Then system should redirect to login page
  Scenario: user enters unregistered email and password
    Given user is on login page
    When user enters "email"
    And user enters "password"
    And user clicks on "login" button
    Then system should should display an error
  Scenario: user enters registered email and invalid password and clicks on login button
    Given user is on login page
    When user enters email
    And user enters password
    And user clicks on login button
    Then system should display an error
  Scenario: user enters registered email and valid password
    Given user is on login page
    When user enters email
    And user enters password
    And user clicks on login button
    Then system should redirect to dashboard
