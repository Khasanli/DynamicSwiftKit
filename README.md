class ExampleTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setView()
    }
    
    private func setView() {
        let example = ExampleViewController()
        example.view.backgroundColor = .orange.withAlphaComponent(0.6)

        let home = UIViewController()
        home.view.backgroundColor = .yellow.withAlphaComponent(0.6)

        let search = UIViewController()
        search.view.backgroundColor = .cyan.withAlphaComponent(0.6)

        let person = UIViewController()
        person.view.backgroundColor = .orange.withAlphaComponent(0.6)

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
