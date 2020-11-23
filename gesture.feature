Feature: Home screen gesture feature
    
    Description: User should be able to customize the gesture actions on the home screen of Accel Launcher. User can customize gesture from accel launcher setting whereas user can perform gesture on home screen.

    Scenario: User can customize double tap on home screen gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Double Tap" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while double tapping on homescreen

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |

    Scenario: User can customize Touch & Hold gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Touch & Hold" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while Touch & Holding on homescreen

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |

    Scenario: User can customize Home Button Tap gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Home Button Tap" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while Home Button is tapped on homescreen        

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |

    Scenario: User could customize Back Button Tap gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Back Button Tap" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while Back Button is tapped on homescreen

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |

    Scenario: User could customize Swipe Down gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Swipe Down" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while Swiping down on homescreen

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |

    Scenario: User could customize Swipe Up From Dock gesture
        Given user is on gesture menu in Accel Launcher
            When user tap on "Swipe Up From Dock" 
            Then user sees popup displaying the actions to be performed options
            And user tap on <action>
            Then <Action_performed> should be performed while Swiping up from Dock on homescreen

            Examples:
            | action |Action_performed|
            | Do nothing | device should not perform any action |
            | sleep |Device should sleep |
            | open app drawer | app drawer should open |
            | opern search |search should open |
            | Show Menu | Menu should open |
            | Open Widgets | Widgets should open |
            | Open Accel Settings |Accel Settings should open |
            | Open Notification Panel | Notification Panel Should open |
            | Open News Feed | home screen should switch to News Feed page |