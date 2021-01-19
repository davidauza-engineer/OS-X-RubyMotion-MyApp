class MainViewController < NSViewController

  def loadView
    self.view = MainView.alloc.initWithFrame(CGRect.new([0, 0], [200, 360]))
    loadFriendsButton
  end

  def loadFriendsButton
    button = NSButton.alloc.initWithFrame([[20, 250], [70, 30]])
    button.target = self
    button.action = :request_friends
    button.title = 'Amigos'
    
    view.addSubview(button)
  end

  def request_friends
    puts Friend.request
  end
end
