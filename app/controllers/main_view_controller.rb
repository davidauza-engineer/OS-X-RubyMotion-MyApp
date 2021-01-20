class MainViewController < NSViewController
  include NotificationSender

  def loadView
    self.view = MainView.alloc.initWithFrame(CGRect.new([0, 0], [200, 360]))
    loadFriendsButton
    loadNotificationButton
    loadResponseTextField
  end

  def loadFriendsButton
    button = NSButton.alloc.initWithFrame([[20, 250], [70, 30]])
    button.target = self
    button.action = :request_friends
    button.title = 'Amigos'
    
    view.addSubview(button)
  end

  def loadNotificationButton
    button = NSButton.alloc.initWithFrame([[220, 250], [90, 30]])
    button.target = self
    button.action = :send_notification
    button.title = 'Notificar'

    view.addSubview(button)
  end

  def loadResponseTextField
    text_field = NSTextField.alloc.initWithFrame([[20, 20], [300, 200]])
    text_field.editable = true
    text_field.backgroundColor = NSColor.clearColor

    view.addSubview(text_field)

    @response_field = WeakRef.new(text_field)
  end

  def send_notification
    notification_send('Título', 'Subtítulo', 'Texto informativo')
  end

  def request_friends
    @response_field.stringValue = Friend.request.to_s
  end
end
