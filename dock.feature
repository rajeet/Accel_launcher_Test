Feature: Homescreen Dock 
User on the Accel Launcher will have dock on homescreen on bottom

    Description: By default on the dock of home screen there will be a favourite applications. App Drawer 
    is irremovable whereas other applications can be removed and replaced.
    
    Example:
        |Phone|
        |Messaging|
        |App Drawer|
        |Chrome|
        |Camera|

    Scenario: App drawer button should be immovable
        Given User is on Home Screen
        When user performs long press drag on App drawer button
        Then App drawer button should be fixed and non dragable

    Scenario: App on Dock should be movable
        Given User is on Home Screen
        When user performs long press drag on application
        Then applications should be movable and dragable

    Scenario: App on Dock could be removed
        Given User is on Home Screen
        When user performs long press drag on application 
        Then user should see remove popup on top of the screen
        When user should drag application to remove 
        Then user should can remove application from dock

    Scenario: App on Dock could be removed using app throw up
        Given User is on Home screen
        When user performs long press drag on application
        And user drag and throw app upside
        Then user should remove application from dock 

    Scenario: User should open app drawer by swiping up
        Given User is on home screen
        When user swipe up from the dock 
        Then user should see the app drawer opened
    


    # Managing Dock settings 
    Scenario: Removing app drawer buttons from dock
        Given User is on Accel Launcher settings
        When user tap on Dock settings
        And turn "Off" app drawer icon 
        Then the app drawer icon on dock will get removed

    Scenario: Getting back app drawer buttons in dock
        Given User is on Accel Launcher settings
        When user tap on Dock settings
        And turn "On" app drawer icon 
        Then the app drawer icon on dock will get back on dock

    Scenario: User can manage number of applications on dock
        Given User is on Dock settings on Accel Launcher settings 
        When user tap on Dock size
        Then user should see list of number of application option.
        And user should select number of application to display on dock

    # dock applications settings
    Scenario: User could view app info dock application
        Given User is on Home Screen
        When user tap and hold on application
        Then user see app info on popup 

        Given User sees app info popup
        When user sees app info popup 
        Then user tap on app info 
        And user should be redirected to application information page






        