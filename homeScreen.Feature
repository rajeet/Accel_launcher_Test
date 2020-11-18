Feature: As a user user should be able to see favourite icons including App drawer menu on primary home screen

  Scenario: Phone,Messaging,App Drawer,Camera and Chrome as favourite apps
    Given User is on the home screen
    Then user should see <Favourite Apps> on bottom

    Examples:
    | Favourite Apps | 
    |Phone|
    |Messaging|
    |App drawer Button|
    |Camera|
    |Chrome|


  Scenario: App drawer button should be immovable
    Given User is in Home Screen
    When user performs long press drag on App drawer button
    Then App drawer button should be fixed and non dragable


  Scenario: User should only be only be allowed to add 5 apps as favourite
    Given Bottom panel of home screen consists of 5 apps
    When user drags and releases any app to Home screen bottom panel
    Then Message "No more room in Favourite tray" should be displayed

  Scenario: Addition of app over any other apps on the bottom should create folder
    Given Bottom panel of home screen consists of an app
    When User drags and release any app to home screen bottom panel over the app
    Then Folder should be created with both app should be created

  Scenario: Addition of app over App drawer button
    Given User is in Home screen
    When User drags and release any app to home screen bottom panel over the App drawer button
    Then Message "No more room in Favourite tray" should be displayed

  Scenario: Removing the favourite apps
    Given User is in the home screen
    When User holds down the app
    Then Button  "Remove" should appear on top of screen
    And user should be able to remove app by upward fling

  Scenario: Removing third party app from home screen
    Given User is in the homescreen 
    And there exist third party app say "Slack"  
    When longpressing and dragging "Slack"
    Then User should see "Remove" 
    And user should also see "Uninstall"



Feature: Two screen on the initial installation

  Scenario: Presence of two initial screen on home screen with indicators on primary
    Given user is int the home screen
    Then user should see two dot
    And Dot indicator of screen in which user should be highlighted

  Scenario: Moving from primary screen to another
    Given User is in Home screen
    When user performs swipe right
    Then user should get redirected to another screen
    And Dot indicator of that scree should be highlighted

  Scenario: Removing app from second screen should not remove second screen 
    Given The second screen consists of app present on it
    When User drags the app
    And Fling up to remove
    Then User should be on the second screen 
    

Feature: As a user it should be allowed to add different in system and third party widget onto the homescreen
  
  Scenario: All the google search widget are to be prohibited on widget section
    Given User is in home screen
    When user perform Longpress action on homescreen
    And selects widget from popup 
    Then user should see all the widgets for the applications
    But user shouldnt see google based search bar widget

  Scenario: On hold of widget user should see the view with remove button and pages
    Given User is in home screen with widget present
    When User holds the widget 
    Then user should see the "Remove" button top
    And widget is draggable to another screen

  Scenario: Widgets in primary screen arenot allowed to move to right screen
    Given User is on the primary home screen
    And widget is present
    When user drags widget to right screen 
    Then Homescreen shouldnt change  

  
#Sprint 4
#Clock/weather Widget
Feature: As a user primary home screen grid default look should show the clock/weather widget
  
  Scenario: Visibility of clock/weather widget 
  Given User is on the home screen 
  Then user should see clock/weather widget

  Scenario: Removing clock weather widget
  Given User is in home screen 
  And User sees Clock/weather widget
  When user Longpresses widget 
  Then user should see "Remove" on top
  And user can move widget to next screen
  And widget should be removed on fling up

  Scenario: Checking for correct weather on different location and time zone
  Given User has set the time zone and location to Kathmandu
  And user is on the home screen 
  Then user should see current tempmerature and time of Kathmandu

  Scenario: On tapping on clock/weather widget user should  be redirected to Date/time zone setting
  Given Clock/weather widget is setup on the home screen
  When user taps on the widget
  Then user should get redirected to the Android's native clock/weather settings  

 Scenario: Weather icons should be displayed as per the weather conditions
 Given Clock/weather widget is setup on the home screen 
 When weather is <weather type>
 Then Weatehr widget icon should be <weather_widget_icon>
 Examples:
 | weather type | weather_widget_icon | 
 | Clear weather condition | Sunny_icon  |
 | Partly cloudy |  Partly cloudy_icon |
 | Partly rainy | Partly rainy_icon  | 
 | Stormy weather condition | Stormy_icon|
 | Rainy weather condition | Rainy_icon  |
 | Cloudy weather condition  | Cloudy_icon  |
 | Hazy weather condition | Hazy_icon  |

 Scenario: Clock/weather widget is used without network
 Given Network(Wifi) is disabled on the device
 And Clock/weather widget is setup on the home screen
 Then User should see reload icon on widget
 But user should not see any of weather icons


Scenario: Clock/weather widget refreshed every hour
Given Users setup clock/weather widget on home screen
When when user waits for an hour time period
Then user should see changes on the widget weather


#Sprint 5
 #Left screen addition
Feature: As a user, on swiping left  user should see the Search view 

Scenario: 
Given 


#Filter search widgets 
Feature: Not to show Filter search widgets from the list of widgets 

Scenario: Searchwidget which makes direct search to search engines must be removed
Given User is on Widgets chooser screen
And different <browsers> widget are present
Then user shouldnt be see any widgets with would make direct search with search engines

Examples:
|browsers|
| google Chrome  |
| firefox  |
| uc browser |
| brave  |
| duckduckgo |
| torbrowser |

