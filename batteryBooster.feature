Feature: Battery Booster feature from Accel Launcher
    
    Description: User could optimize process and ram by using this feature
    
    Background: User is on Accel Launcher Settings page.

    Scenario: User Should optimize running process and Ram usage 
        Given User is on Accel Launcher Settings
        When user taps on Battery Booster 
        Then user should see battery booster analysing storage
        And after analysing battery booster should show the running process and ram usage 
        And user should see optimize button

        Given user sees optimize button 
        When user tap on optimize 
        Then user should see application being optimized


        

