
#Sprint 5
Feature: Notification tool bar
 On launching the accel launher user should see the notification tool bar on notification bar of application

Scenario: Notification bar should contain search,wifi,data,flashlight and more
Given user launches the accel launcher
When user swipees down on homescreen
Then user sees notification tool bar
And it consist of search,wifi,data and flashlight

Scenario: Search icon should open search activity 
Given User swipes down on homescreen 
And User detects toolbar
When user tap on the search icon
Then view should be redirect to search activity bar

Scenario: Notification bar should pressitently remain on the notification bar even user exit from accel launcher
Given User launches the acccel launcher
When user moves to another different launcher
Then User should see Notification tool bar of accel launcher

Scenario: On performing action on the tool bar while user is on the other launcher, user should be redirected to solo
Given Tool bar is already present on the Notifcation bar
And User is on the mobile's default launcher
When user taps on "More"(kebab) button 
Then user should  see the list of all tools
But user should be on accel launcher on "Back" button

Scenario: More should expan view with wifi, mobile torch,vibrate,silent,air plane mode,GPS,Bluetooth,Auto Brightness,Auto rotation,Battery status,Input, Task manager,Language,app Manager
Given User is on notifcation section 
When user taps on "More" of the accel launcher notification
Then Use can see <system icon>

Examples:
| system icon | 
| wifi |appium javaotation |
| Battery status |
| Input |
| Task manager |
| Language |
| app Manager |


