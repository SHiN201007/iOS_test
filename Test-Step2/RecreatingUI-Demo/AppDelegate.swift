
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let window = UIWindow()
    window.rootViewController = ViewController()
    window.makeKeyAndVisible()
    self.window = window

    // Override point for customization after application launch.
    return true
  }

}

