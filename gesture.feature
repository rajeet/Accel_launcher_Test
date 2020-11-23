Feature: Home screen gesture feature
    
    Description: User should be able to customize the gesture actions on the home screen of Accel Launcher. User can customize gesture from accel launcher setting whereas user can perform gesture on home screen.

    Scenario: User can customize double tap on home screen gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Double Tap" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while double tapping on homescreen

            |Example|
            |action|Action_performed|
            |sleep|Device should sleep|
            |open app drawer| app drawer should open|
            |opern search|search should open|
            |Show Menu| Menu should open|
            |Open Widgets| Widgets should open|
            |Open Accel Settings|Accel Settings should open|
            |Open Notification Panel| Notification Panel Should open|
            |Open News Feed| home screen should switch to News Feed page|
            




