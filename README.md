# Dynamic Swift Kit

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
    - [Dynamic TabBars](#dynamic-tabbars)
    - [Dynamic Side menus](#dynamic-side-menus)
    - [Dynamic Buttons](#dynamic-buttons)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Code Examples](#code-examples)
7. [License](#license)

## Introduction

Dynamic Swift Kit is a versatile and user-friendly framework framework developed using Swift and UIKit, designed to enhance and streamline the development of iOS applications. This Swift-based toolkit simplifies the process of creating dynamic and visually appealing user interfaces. With Dynamic Swift Kit, developers can easily implement customizable UI components such as tab bars, side menus, and buttons. Whether you're building a simple app or a complex interface, this framework provides a range of adaptable and easy-to-use components that cater to various design needs. Dynamic Swift Kit is perfect for Swift developers looking to add a touch of sophistication and interactivity to their iOS applications without compromising on performance or usability.

## Features

## Dynamic TabBars

Dynamic TabBars in Dynamic Swift Kit offer a customizable approach to navigation in iOS apps. Developers can easily implement tab bars with various styles. They can be customized in terms of appearance, including colors, icons, and layout, to match the theme and design of your application.

```swift    
let tabbar = LibTabBar(tabs: tabs, tabBarController: self, style: .circle)
```
![curveSelected](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/65853548-7bb7-42a8-bcf1-db9eb64adc2d)

## Dynamic Side menus

Dynamic Side Menus provide an elegant solution for organizing and accessing different sections of an app. These side menus are highly interactive and can be tailored to fit any app design. Developers can customize aspects such as background colors, menu items, icons, and animations, creating a unique user experience that aligns with the app's overall aesthetic.

```swift    
let sideMenu = DSSideMenu(items: items, mainController: self, style: .minimizable)
```
![Untitled design](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/219ae1a6-5d14-4c50-8c64-cd059c1d37b4)


## Dynamic Buttons

Dynamic Buttons in this toolkit offer versatility and creativity in user interaction. The buttons are customizable in terms of size, color, animation, and functionality, allowing developers to create buttons that not only look great but also enhance the overall user experience.

```swift    
let button = DSButton(style: .dotLoading)
```
![Untitled design](https://github.com/Khasanli/DynamicSwiftKit/assets/47345666/3a394743-fa1f-4886-a536-e13f8cd3169e)

## Installation
Instructions for installing the project.

## Usage
How to use the project after installation.

## Code Examples
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

        viewControllers = [example, home, search, person]

        let tabs = [LibTab(icon: UIImage(systemName: "house.fill")),
                    LibTab(icon: UIImage(systemName: "heart.fill")),
                    LibTab(icon: UIImage(systemName: "person.fill")),
                    LibTab(icon: UIImage(systemName: "gearshape.fill"))]
                    
        let tabbar = LibTabBar(tabs: tabs, tabBarController: self, style: .circle)
        tabbar.height = 60
        tabbar.tabBarBackgroundColor = .white
        tabbar.tabBarCornerRadius = 30
    }
}
```

## License

DynamicSwiftKit is released under the MIT license.


```swift
class ExampleSideMenuViewController: UIViewController, UIGestureRecognizerDelegate {

    var sideMenu: DSSideMenu!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setView()
    }
    
    private func setView() {

        let image = UIImageView(image: UIImage(named: "line.3.horizontal.circle")?.withRenderingMode(.alwaysTemplate))
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2),
            image.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2)
        ])
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "line.3.horizontal.circle")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.tintColor = .white
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 30),
        ])
        
        let homeSubItem = DSSideMenuSubItem(title: "Dashboard", icon: nil, action: {print("Dashboard")})
        let homeSubItem2 = DSSideMenuSubItem(title: "Notifications", icon: nil, action: {print("Notifications")})
        let homeSubItem3 = DSSideMenuSubItem(title: "Trending", icon: nil, action: {print("Trending")})

        let messageSubItem = DSSideMenuSubItem(title: "Unread", icon: UIImage(systemName: "message.badge"), action: {print("Unread")})
        let messageSubItem2 = DSSideMenuSubItem(title: "Starred", icon: UIImage(systemName: "star"), action: {print("Starred")})
        let messageSubItem3 = DSSideMenuSubItem(title: "Archived", icon: UIImage(systemName: "archivebox"), action: {print("Archived")})

        let calendarSubItem = DSSideMenuSubItem(title: "Daily View", icon: nil, action: {print("Daily")})
        let calendarSubItem2 = DSSideMenuSubItem(title: "Weekly View", icon: nil, action: {print("Weekly")})
        let calendarSubItem3 = DSSideMenuSubItem(title: "Monthly View", icon: nil, action: {print("Monthly")})

        let settingsSubItem = DSSideMenuSubItem(title: "Privacy Settings", icon: UIImage(systemName: "hand.raised.circle"), action: {print("Privacy")})
        let settingsSubItem2 = DSSideMenuSubItem(title: "Notification Settings", icon: UIImage(systemName: "bell.circle"), action: {print("Notification")})

        
        let action1 = DSSideMenuItem(icon: UIImage(systemName: "house"), selectedIcon:  UIImage(systemName: "house.fill"), title: "Home", action: {print("Home")}, subItems: [homeSubItem, homeSubItem2, homeSubItem3])
        
        let action2 = DSSideMenuItem(icon: UIImage(systemName: "person"), selectedIcon:  UIImage(systemName: "person.fill"), title: "Profile", action: {print("Profile")}, subItems: nil)

        let action3 = DSSideMenuItem(icon: UIImage(systemName: "message"), selectedIcon:  UIImage(systemName: "message.fill"), title: "Messages", action: {print("Messages")}, subItems: [messageSubItem, messageSubItem2, messageSubItem3])
                        
        let action4 = DSSideMenuItem(icon: UIImage(systemName: "calendar"), selectedIcon:  UIImage(systemName: "calendar"), title: "Calendar", action: {print("Calendar")}, subItems: [calendarSubItem, calendarSubItem2, calendarSubItem3])

        let action5 = DSSideMenuItem(icon: UIImage(systemName: "chart.bar.doc.horizontal"), selectedIcon:  UIImage(systemName: "chart.bar.doc.horizontal"), title: "Activities", action: {print("Activities")}, subItems: nil)
        
        let action6 = DSSideMenuItem(icon: UIImage(systemName: "gearshape"), selectedIcon:  UIImage(systemName: "gearshape.fill"), title: "Settings", action: {print("Settings")}, subItems: [settingsSubItem, settingsSubItem2])
        
        let action7 = DSSideMenuItem(icon: UIImage(systemName: "info.circle"), selectedIcon:  UIImage(systemName: "info.circle"), title: "About us", action: {print("seven")}, subItems: nil)

        let items : [DSSideMenuItem] = [action1, action2, action3, action4, action5, action6, action7]
    
        
        sideMenu = DSSideMenu(items: items, mainController: self, style: .minimizable)
            
    }
    
    @objc func buttonTapped() {
        sideMenu.openMenu()
    }
    
    internal func removeExistingView(_ view: UIView?) {
       guard let view = view else { return }
       NSLayoutConstraint.deactivate(view.constraints)
       view.removeFromSuperview()
   }

   
}
```


class ExampleButtonViewController: UIViewController {

    let button = LibButton(style: .roundLoading)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setView()
    }
    
    private func setView() {
        button.titleText = "Button"
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)
          NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            button.widthAnchor.constraint(equalToConstant: 160)
        ])
      }
}
