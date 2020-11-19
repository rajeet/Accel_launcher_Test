Feature: Night Mode for Accel Launcher

    Description: Nightmode on Accel Launcher is turned off by default

    Background: User is already on Accel Launcher Settings Window


    Scenario: User Should be on Nightmode Window

    Given User should see different menu on Accel Launcher Settings.
    When User taps on Night Mode 
    Then User should see Nightmode Window

    Scenario: User can turn on Nightmode.

    Given User should see dropdown button on Nightmode Window
    When User taps on dropdown button 
    And hit "On"
    Then background color of app turn dark and font color turn white.

    Scenario: User can turn off Nightmode

    Given User should see dropdown button on Nightmode Window
    When User taps on dropdown button 
    And hit "Off"
    Then background color of app turn white and font color turn dark.

    Scenario: User can set Nightmode to auto.

    Given User should see dropdown button on Nightmode Window
    When User taps on dropdown
    And hit "auto"
    Then <background_color> and <font_color> should change according to <sun>.

    Example:
    |sun|background_color|font_color|
    |"sunrise"|"white"|"dark"|
    |"sunset"|"dark"|"white"|

    Scenario: User can set custom Nightmode

    Given User should see dropdown button on Nightmode Window
    When user taps on dropdown
    And hit "custom"
    Then Clock popup will rise 
    And ask for sunset time

    Given sunset time pop up has rised
    when user set time to "7:00 pm"
    Then next clock popup will rise
    And ask for Sunrise time

    Given sunrise clock popup has rised
    When user set time to "6:00 am"
    Then Nightmode will activate after "7:00 pm" in evening to "6:00 am" in the morning.






