import UIKit
import React

/// This is a standard React Native entry-point, but converted to Swift.
@UIApplicationMain
class AppDelegate: UIResponder {

  var window: UIWindow?

}

extension AppDelegate: UIApplicationDelegate {

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    let bridge = RCTBridge(delegate: self, launchOptions: launchOptions)!

    let rootView = RCTRootView(
      bridge: bridge,
      moduleName: "PlayTriviaReactNative",
      initialProperties: nil
    )
    rootView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

    let rootViewController = UIViewController()
    rootViewController.view = rootView

    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
    self.window = window

    return true
  }

}

extension AppDelegate: RCTBridgeDelegate {

  func sourceURL(for bridge: RCTBridge!) -> URL! {
    #if DEBUG
    return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
    #else
    return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
    #endif
  }

}
