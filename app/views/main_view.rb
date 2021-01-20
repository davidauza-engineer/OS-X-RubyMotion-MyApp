class MainView < NSView

  def initWithFrame(frameRect)
    super
    loadFriendsLabel
    loadNotificationLabel
  end

  def loadFriendsLabel
    label = NSTextField.alloc.initWithFrame([[20, 300], [100, 100]])
    label.stringValue = 'Descargar lista de amigos'
    label.sizeToFit
    label.editable = false
    label.bordered = false
    label.backgroundColor = NSColor.clearColor

    addSubview(label)
  end

  def loadNotificationLabel
    label = NSTextField.alloc.initWithFrame([[220, 300], [100, 100]])
    label.stringValue = 'Enviar Notificación'
    label.sizeToFit
    label.editable = false
    label.bordered = false
    label.backgroundColor = NSColor.clearColor

    addSubview(label)
  end
end
