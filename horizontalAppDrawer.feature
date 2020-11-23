Feature: Horizontal feature over the app drawer

    Description: User can enjoy horizontal as well as vertical app drawer view

    Background: User is on Horizontal App drawer

    Scenario: Getting on to the Horizontal app drawer
        Given user is on homescreen
        When user presses menu
        Then user sees Horizontal app drawer
        And validates with "All Apps"
        And user sees page indicator at bottom of app drawer

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
    
    Scenario: User should Swipe from left and right to change app drawer window
        Given User is on app drawer 
        And on default window 
        When User swipe left 
        Then right side app drawer window will slide to screen

    Scenario: User can use recently used app in app drawer 
        Given when User is on Home screen
        When user open app drawer 
        Then user can use recently used app quickly
        


