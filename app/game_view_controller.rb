class GameViewController < UIViewController
  def viewDidLoad
    localPlayer = GKLocalPlayer.localPlayer

    localPlayer.authenticateHandler = ->(viewController, error) do
      if viewController != nil
        self.presentViewController(viewController, animated:true, completion:nil)
      else
        if GKLocalPlayer.localPlayer.authenticated?
          GKLocalPlayer.localPlayer.loadDefaultLeaderboardIdentifierWithCompletionHandler(->(leaderboardIdentifier, error) do
            if error != nil
              NSLog(error.inspect)
            else
              @leaderboardIdentifier = leaderboardIdentifier
            end
          end)
          @gameCenterEnabled = true
        else
          @gameCenterEnabled = false
        end
      end
    end
  end
end
