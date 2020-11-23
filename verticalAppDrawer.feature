Feature: Vertical view over the app drawer
  
  Description: User can enjoy vertical as well as horizontal app drawer view

  Scenario: Getting on to the vertical app drawer
    Given user is on homescreen
    When user presses menu
    Then user sees vertical app drawer
    And validates with "All Apps"

  Scenario: Search on app drawer
    Given user is on app drawer
    When user tap on the search bar
    Then search view should be  activated
    And search bar is focused
    And keyboard could be seen


  Scenario: exiting form app drawer with swipe down
    Given User is on the app drawer
    When user performs swipe down
    Then user ends up on the homescreen

  Scenario: Exiting form app drawer with back button from navigation
    Given user is on app drawer
    When user hits back button
    Then user ends upon home screen

  Scenario: Opening hide app menu
    Given user is on the app drawer
    When user hit kebaab menu
    Then user sees drawer from below
    And drawer has "Hide apps"

  Scenario: Checking for the alphabet present according to installed application
    Given user is on app drawer
    When user checks for the alphabets
    Then use should only see those letter with at least one alphabet on it

  #Application with no quick shortcut from tap and hold
  Scenario: Tap and hold on app icon should popup app shortcut else app info.
    Given user is on app drawer
    When user tap and hold facebook application
    Then App info popup should be displayed

  #Application with quick shortcut from tap and hold
  Scenario: Tap and hold on app with quick shortcut
    Given user is on app drawer 
    When user taps and hold on clock app icon 
    Then quick shortcut popup should be displayed
    And app info also should be displayed 

  #User can add widget to homescreen from app drawer
  Scenario: User should be able to add widget from app drawer if available
    Given User is on app drawer
    When user taps and hold on clock app
    Then widget logo should be displayed on popoup 
    When user taps on widget button 
    Then user should see the available widget
    When user sees an available widget
    Then user should drag the widget to homescreen

  Scenario: User can use recently used app in app drawer 
    Given when User is on Home screen
    When user open app drawer 
    Then user can use recently used app quickly