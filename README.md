# Dynamic Swift Kit

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
    - [Dynamic TabBars](#dynamic-tabbars)
    - [Dynamic Side Menus](#dynamic-side-menus)
    - [Dynamic Buttons](#dynamic-buttons)
4. [Installation](#installation)
5. [Code Examples](#code-examples)
    - [Dynamic TabBar Examples](#dynamic-tabbar-examples)
    - [Dynamic Side Menu Examples](#dynamic-side-menu-examples)
    - [Dynamic Button Examples](#dynamic-button-examples)
6. [License](#license)

## Introduction

Dynamic Swift Kit is a versatile and user-friendly framework developed using Swift and UIKit, designed to enhance and streamline the development of iOS applications. This Swift-based toolkit simplifies the process of creating dynamic and visually appealing user interfaces. With Dynamic Swift Kit, developers can easily implement customizable UI components such as tab bars, side menus, and buttons. Whether you're building a simple app or a complex interface, this framework provides a range of adaptable and easy-to-use components that cater to various design needs. Dynamic Swift Kit is perfect for Swift developers looking to add a touch of sophistication and interactivity to their iOS applications without compromising on performance or usability.

## Features

### Dynamic TabBars

Dynamic TabBars in Dynamic Swift Kit offer a customizable approach to navigation in iOS apps. Developers can easily implement tab bars with various styles. They can be customized in terms of appearance, including colors, icons, and layout, to match the theme and design of your application.

```swift    
let tabbar = LibTabBar(tabs: tabs, tabBarController: self, style: .circle)
```
![curveSelected](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/65853548-7bb7-42a8-bcf1-db9eb64adc2d)

### Dynamic Side menus

Dynamic Side Menus provide an elegant solution for organizing and accessing different sections of an app. These side menus are highly interactive and can be tailored to fit any app design. Developers can customize aspects such as background colors, menu items, icons, and animations, creating a unique user experience that aligns with the app's overall aesthetic.

```swift    
let sideMenu = DSSideMenu(items: items, mainController: self, style: .minimizable)
```
![Untitled design](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/219ae1a6-5d14-4c50-8c64-cd059c1d37b4)


### Dynamic Buttons

Dynamic Buttons in this toolkit offer versatility and creativity in user interaction. The buttons are customizable in terms of size, color, animation, and functionality, allowing developers to create buttons that not only look great but also enhance the overall user experience.

```swift    
let button = DSButton(style: .dotLoading)
```
![Untitled design](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/3a394743-fa1f-4886-a536-e13f8cd3169e)

## Installation
Dynamic Swift Kit can be installed using CocoaPods or Swift Package Manager (SPM). Below are the instructions for each method:

# Using Swift Package Manager (SPM)

Open Your Project in Xcode

Go to File > Swift Packages > Add Package Dependency....

Enter the URL of the Dynamic Swift Kit repository. It will typically look like this:

```    
https://github.com/Khasanli/DynamicSwiftKit.git
```

Select the version range or a specific version you want to use, then click Next.

Choose the target in your project where you want to use Dynamic Swift Kit.

Click Finish. Xcode will download and integrate the package into your project.

Now you can import Dynamic Swift Kit in your Swift files where you want to use it:

```swift
import DynamicSwiftKit
```

## Code Examples

### Dynamic TabBar Examples

```swift
class ExampleTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setView()
    }
    
    private func setView() {
        let home = UIViewController()
        home.view.backgroundColor = .yellow.withAlphaComponent(0.6)

        let heart = UIViewController()
        heart.view.backgroundColor = .orange.withAlphaComponent(0.6)
        
        let person = UIViewController()
        person.view.backgroundColor = .orange.withAlphaComponent(0.6)

        let search = UIViewController()
        search.view.backgroundColor = .cyan.withAlphaComponent(0.6)

        viewControllers = [home, heart, person, search]

        let tabs = [DSTab(icon: UIImage(systemName: "house.fill")),
                    DSTab(icon: UIImage(systemName: "heart.fill")),
                    DSTab(icon: UIImage(systemName: "person.fill")),
                    DSTab(icon: UIImage(systemName: "gearshape.fill"))]
                    
        let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .circle)
        tabbar.height = 60
        tabbar.tabBarBackgroundColor = .white
        tabbar.tabBarCornerRadius = 30
    }
}
```

DSTabBar offers various styles to customize the appearance and behavior of the tab bar. Here are some of the available styles:

```swift

// Background
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .background)

// Curved up
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .curvedUp)
        
// Curved down
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .curvedDown)
        
// Dot in curve
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .dotInCurved)
        
// Stable curved down
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .stableCurvedDown)
        
// Top lined
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .topLined)

```

For the style with a special action button in the center of the tab bar, you have to add a center action.
Example Initialization:

```swift
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .curvedCenterAction)
// Set the center action
tabbar.centerAction = DSTabAction(icon: UIImage(systemName: "plus.circle.fill")) {
    // Handle the center action here
}
```

For the style with three action buttons, you have to set the tripleAction property of tabBar.

```swift
let tabbar = DSTabBar(tabs: tabs, tabBarController: self, style: .curvedTripleAction)

tabbar.tripleActions = [
    DSTabAction(icon: UIImage(systemName: "camera.fill")) {
        // Handle the camera action here
    },
    DSTabAction(icon: UIImage(systemName: "photo.fill")) {
        // Handle the photo action here
    },
    DSTabAction(icon: UIImage(systemName: "mic.fill")) {
        // Handle the microphone action here
    }
]
```

To achieve a dynamic tabBar that seamlessly integrates with your user interface, you have the flexibility to adjust various properties. These properties allow you to tailor the tab bar's appearance and behavior to perfectly match your design.

```swift
tabbar.height = 60
tabbar.tabBarBackgroundColor = .white
tabbar.tabBarCornerRadius = 30
tabbar.width = 300
tabbar.selectedTabIndex = 1
tabbar.tabBarIndicatorColor = .systemPink
tabbar.tabBarSelectedTabColor = .darkGray
tabbar.tabBarTintColor = .darkGray
tabbar.tabBarShadowColor = .white
```

### Dynamic Side Menu Examples

```swift
class ExampleSideMenuViewController: UIViewController, UIGestureRecognizerDelegate {

    lazy var menuButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "line.3.horizontal.circle")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(menuButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var sideMenu: DSSideMenu!

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    private func setView() {
        view.backgroundColor = .gray
        setButtonConstraint()
        setSideMenu()
    }
    
    private func setButtonConstraint() {
        view.addSubview(menuButton)
        NSLayoutConstraint.activate([
            menuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            menuButton.widthAnchor.constraint(equalToConstant: 30),
            menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            menuButton.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    private func setSideMenu() {
        let homeDashboard = DSSideMenuSubItem(title: "Dashboard", icon: nil, action: {print("Dashboard")})
        let homeNotifications = DSSideMenuSubItem(title: "Notifications", icon: nil, action: {print("Notifications")})
        let homeTrending = DSSideMenuSubItem(title: "Trending", icon: nil, action: {print("Trending")})

        let messageUnread = DSSideMenuSubItem(title: "Unread", icon: UIImage(systemName: "message.badge"), action: {print("Unread")})
        let messageStarred = DSSideMenuSubItem(title: "Starred", icon: UIImage(systemName: "star"), action: {print("Starred")})
        let messageArchived = DSSideMenuSubItem(title: "Archived", icon: UIImage(systemName: "archivebox"), action: {print("Archived")})

        let calendarDaily = DSSideMenuSubItem(title: "Daily View", icon: nil, action: {print("Daily")})
        let calendarWeekly = DSSideMenuSubItem(title: "Weekly View", icon: nil, action: {print("Weekly")})
        let calendarMonthly = DSSideMenuSubItem(title: "Monthly View", icon: nil, action: {print("Monthly")})

        let settingsPrivacy = DSSideMenuSubItem(title: "Privacy Settings", icon: UIImage(systemName: "hand.raised.circle"), action: {print("Privacy")})
        let settingsNotification = DSSideMenuSubItem(title: "Notification Settings", icon: UIImage(systemName: "bell.circle"), action: {print("Notification")})

        let homeAction = DSSideMenuItem(icon: UIImage(systemName: "house"), selectedIcon:  UIImage(systemName: "house.fill"), title: "Home", action: {print("Home")}, subItems: [homeDashboard, homeNotifications, homeTrending])
        
        let profileAction = DSSideMenuItem(icon: UIImage(systemName: "person"), selectedIcon:  UIImage(systemName: "person.fill"), title: "Profile", action: {print("Profile")}, subItems: nil)

        let messageAction = DSSideMenuItem(icon: UIImage(systemName: "message"), selectedIcon:  UIImage(systemName: "message.fill"), title: "Messages", action: {print("Messages")}, subItems: [messageUnread, messageStarred, messageArchived])
                        
        let calendarAction = DSSideMenuItem(icon: UIImage(systemName: "calendar"), selectedIcon:  UIImage(systemName: "calendar"), title: "Calendar", action: {print("Calendar")}, subItems: [calendarDaily, calendarWeekly, calendarMonthly])

        let activitiesAction = DSSideMenuItem(icon: UIImage(systemName: "chart.bar.doc.horizontal"), selectedIcon:  UIImage(systemName: "chart.bar.doc.horizontal"), title: "Activities", action: {print("Activities")}, subItems: nil)
        
        let settingsAction = DSSideMenuItem(icon: UIImage(systemName: "gearshape"), selectedIcon:  UIImage(systemName: "gearshape.fill"), title: "Settings", action: {print("Settings")}, subItems: [settingsPrivacy, settingsNotification])
        
        let aboutUsAction = DSSideMenuItem(icon: UIImage(systemName: "info.circle"), selectedIcon:  UIImage(systemName: "info.circle"), title: "About us", action: {print("seven")}, subItems: nil)

        let items : [DSSideMenuItem] = [homeAction, profileAction, messageAction, calendarAction, activitiesAction, settingsAction, aboutUsAction]
    
        
        sideMenu = DSSideMenu(items: items, mainController: self, style: .submenu)

    }
    
    @objc func menuButtonTapped() {
        sideMenu.openMenu()
    }

}
```

DSSideMenu offers various styles to customize the appearance and behavior of the side menu. Here are some of the available styles (some of them supports sub items):

```swift

// Parallax
sideMenu = DSSideMenu(items: items, mainController: self, style: .parallax)

// Curve Selected
sideMenu = DSSideMenu(items: items, mainController: self, style: .curveSelected)
        
// Curve Bottom
sideMenu = DSSideMenu(items: items, mainController: self, style: .curveBottom)
        
// Collapsable - Supports sub items
sideMenu = DSSideMenu(items: items, mainController: self, style: .collapsable)
        
// Submenu on side - Supports sub items
sideMenu = DSSideMenu(items: items, mainController: self, style: .submenu)
        
// Top Menu - Supports sub items
sideMenu = DSSideMenu(items: items, mainController: self, style: .topMenu)

// Minimizable
sideMenu = DSSideMenu(items: items, mainController: self, style: .minimizable)

```

To achieve a dynamic side menu that seamlessly integrates with your user interface, you have the flexibility to adjust various properties. These properties allow you to tailor the side menu's appearance and behavior to perfectly match your design.

```swift

sideMenu.side = .left
sideMenu.subItemTintColor = .yellow
sideMenu.subItemIndicatorColor = .yellow
sideMenu.selectedItemTintColor = .yellow
sideMenu.sideMenuBackgroundColor = .yellow
sideMenu.selectedSubItemTintColor = .yellow
sideMenu.sideMenuTintColor = .yellow
sideMenu.logoTintColor = .yellow
sideMenu.titleTextColor = .yellow
sideMenu.leftGradientColor = .yellow
sideMenu.rightGradientColor = .blue
sideMenu.gradientStyle = .leftToRight
sideMenu.topTitle = "Title"
sideMenu.topLogo = UIImage(systemName: "info.circle")!
sideMenu.blurred = true
sideMenu.isOverlayed = true
sideMenu.subItemFont = .systemFont(ofSize: 15)
sideMenu.itemFont = .systemFont(ofSize: 24, weight: .bold)
sideMenu.hideCloseButton = true
sideMenu.topHeight = 50

```

If you want to simplify the configuration of menu items and sub-menu items, you can utilize the action handlers provided below as examples. These handlers make it easier and cleaner to set up and customize the behavior of your menu items and sub-menu items.

Add action types and handler.


```swift
enum SideMenuActionType {
    
    case homeDashboard
    case homeNotifications
    case homeTrending

    case messageUnread
    case messageStarred
    case messageArchived
    
    case calendarDaily
    case calendarWeekly
    case calendarMonthly
    
    case settingsPrivacy
    case settingsNotification
    
    case profileAction
    case activitiesAction
    case aboutUsAction
}

protocol SideMenuActionHandlerProtocol: AnyObject {
    func perform(action: SideMenuActionType)
}

class SideMenuActionHandler {
    
    weak var delegate : SideMenuActionHandlerProtocol?
    var items : [DSSideMenuItem] = []
    
    init() {
        setActions()
    }
    
    private func setActions() {
        let homeDashboard = DSSideMenuSubItem(title: "Dashboard", icon: nil, action: {print("Dashboard")})
        let homeNotifications = DSSideMenuSubItem(title: "Notifications", icon: nil, action: {print("Notifications")})
        let homeTrending = DSSideMenuSubItem(title: "Trending", icon: nil, action: {print("Trending")})

        let messageUnread = DSSideMenuSubItem(title: "Unread", icon: UIImage(systemName: "message.badge"), action: {print("Unread")})
        let messageStarred = DSSideMenuSubItem(title: "Starred", icon: UIImage(systemName: "star"), action: {print("Starred")})
        let messageArchived = DSSideMenuSubItem(title: "Archived", icon: UIImage(systemName: "archivebox"), action: {print("Archived")})

        let calendarDaily = DSSideMenuSubItem(title: "Daily View", icon: nil, action: {print("Daily")})
        let calendarWeekly = DSSideMenuSubItem(title: "Weekly View", icon: nil, action: {print("Weekly")})
        let calendarMonthly = DSSideMenuSubItem(title: "Monthly View", icon: nil, action: {print("Monthly")})

        let settingsPrivacy = DSSideMenuSubItem(title: "Privacy Settings", icon: UIImage(systemName: "hand.raised.circle"), action: {print("Privacy")})
        let settingsNotification = DSSideMenuSubItem(title: "Notification Settings", icon: UIImage(systemName: "bell.circle"), action: {print("Notification")})

        let homeAction = DSSideMenuItem(icon: UIImage(systemName: "house"), selectedIcon:  UIImage(systemName: "house.fill"), title: "Home", action: {print("Home")}, subItems: [homeDashboard, homeNotifications, homeTrending])
        
        let profileAction = DSSideMenuItem(icon: UIImage(systemName: "person"), selectedIcon:  UIImage(systemName: "person.fill"), title: "Profile", action: {print("Profile")}, subItems: nil)

        let messageAction = DSSideMenuItem(icon: UIImage(systemName: "message"), selectedIcon:  UIImage(systemName: "message.fill"), title: "Messages", action: {print("Messages")}, subItems: [messageUnread, messageStarred, messageArchived])
                        
        let calendarAction = DSSideMenuItem(icon: UIImage(systemName: "calendar"), selectedIcon:  UIImage(systemName: "calendar"), title: "Calendar", action: {print("Calendar")}, subItems: [calendarDaily, calendarWeekly, calendarMonthly])

        let activitiesAction = DSSideMenuItem(icon: UIImage(systemName: "chart.bar.doc.horizontal"), selectedIcon:  UIImage(systemName: "chart.bar.doc.horizontal"), title: "Activities", action: {print("Activities")}, subItems: nil)
        
        let settingsAction = DSSideMenuItem(icon: UIImage(systemName: "gearshape"), selectedIcon:  UIImage(systemName: "gearshape.fill"), title: "Settings", action: {print("Settings")}, subItems: [settingsPrivacy, settingsNotification])
        
        let aboutUsAction = DSSideMenuItem(icon: UIImage(systemName: "info.circle"), selectedIcon:  UIImage(systemName: "info.circle"), title: "About us", action: {print("seven")}, subItems: nil)

        items = [homeAction, profileAction, messageAction, calendarAction, activitiesAction, settingsAction, aboutUsAction]
    }
}

```

Set Side menu

```swift
private func setSideMenu() {
  
    let sideMenuActionHandler = SideMenuActionHandler()
    sideMenuActionHandler.delegate = self
    sideMenu = DSSideMenu(items: sideMenuActionHandler.items, mainController: self, style: .submenu)

}

```

And handle actions via protocol.

```swift
extension ExampleSideMenuViewController : SideMenuActionHandlerProtocol {
    func perform(action: SideMenuActionType) {
        switch action {
        case .homeDashboard:
            <#code#>
        case .homeNotifications:
            <#code#>
        case .homeTrending:
            <#code#>
        case .messageUnread:
            <#code#>
        case .messageStarred:
            <#code#>
        case .messageArchived:
            <#code#>
        case .calendarDaily:
            <#code#>
        case .calendarWeekly:
            <#code#>
        case .calendarMonthly:
            <#code#>
        case .settingsPrivacy:
            <#code#>
        case .settingsNotification:
            <#code#>
        case .profileAction:
            <#code#>
        case .activitiesAction:
            <#code#>
        case .aboutUsAction:
            <#code#>
        }
    }
}
```

### Dynamic Button Examples

```swift
class ExampleButtonViewController: UITabBarController {
    
    lazy var dynamicButton : DSButton = {
        let dsbutton = DSButton(style: .dotLoading)
        dsbutton.titleColor = .red
        dsbutton.titleText = "Button"
        dsbutton.backgroundColor = .darkGray
        dsbutton.translatesAutoresizingMaskIntoConstraints = false
        dsbutton.layer.cornerRadius = 10
        dsbutton.addTarget(self, action: #selector(dynamicButtonTapped(_:)), for: .touchUpInside)
        return dsbutton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setView()
    }
    
    private func setView() {
        view.addSubview(dynamicButton)
        NSLayoutConstraint.activate([
            dynamicButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dynamicButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dynamicButton.widthAnchor.constraint(equalToConstant: 150),
            dynamicButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func dynamicButtonTapped(_ sender: UIButton) {
        dynamicButton.animate()
    }
}

```

DSButton offers various styles to customize the appearance and behavior of the button. Here are some of the available styles:


```swift

// Line loading
let dsbutton = DSButton(style: .lineLoading)

// Round loading
let dsbutton = DSButton(style: .roundLoading)

// Multiple Share
let dsbutton = DSButton(style: .multipleShare)

// Dot loading
let dsbutton = DSButton(style: .dotLoading)

// Gradient
let dsbutton = DSButton(style: .gradient)

```

To achieve a dynamic button that seamlessly integrates with your user interface, you have the flexibility to adjust various properties. These properties allow you to tailor the button's appearance and behavior to perfectly match your design.

```swift

dsbutton.imageHeight = 40
dsbutton.image = UIImage(systemName: "heart.fill")
dsbutton.imageSide = .left
dsbutton.loadingText = "Leading"
dsbutton.resultText = "Result"
dsbutton.font = .systemFont(ofSize: 15)

```

For creating multipleShare button you have to set actions for DSButton.

```swift

dsbutton.setActions([
    .init(image: UIImage(named: "facebook")!, action: {}),
    .init(image: UIImage(named: "instagram")!, action: {}),
    .init(image: UIImage(named: "telegram")!, action: {}),
    .init(image: UIImage(named: "whatsapp")!, action: {}),
    .init(image: UIImage(named: "twitter")!, action: {})
])

```

```swift

dsbutton.gradientStyle = .leftToRight
dsbutton.leftGradientColor = .yellow
dsbutton.rightGradientColor = .blue

```

For creating gradient animation you have to set left and right gradient colors.


```swift

dsbutton.gradientStyle = .leftToRight
dsbutton.leftGradientColor = .yellow
dsbutton.rightGradientColor = .blue

```


If you want to add shadow to button you can use code below.


```swift

dsbutton.layer.shadowColor = UIColor.black.cgColor
dsbutton.layer.shadowOpacity = 1.0
dsbutton.layer.shadowRadius = 5
dsbutton.layer.shadowOffset = CGSize(width: 1, height: 1)
dsbutton.layer.masksToBounds = false

```


There is two important properties to pay attention. The first one is 'timeout', which enables you to cancel an animation after a specified time period. By default, the timeout is set to 10 seconds, but you have the flexibility to customize it according to your needs. The second property of importance is 'result', which you can set when you receive a result. This property is responsible for handling the removal of the animation. 


```swift

dsbutton.timeout = 20
dsbutton.result = true

// You can use this method to stop animation.
dsbutton.stopAnimate()

```

## License

DynamicSwiftKit is released under the MIT license.

