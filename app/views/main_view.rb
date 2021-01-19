class MainView < NSView

  def initWithFrame(frameRect)
    super
    loadFriendsLabel
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
end
