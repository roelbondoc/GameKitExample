class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    gameViewController = GameViewController.alloc.initWithNibName(nil, bundle: nil)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    @window.rootViewController = gameViewController
    true
  end
end
