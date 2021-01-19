class MainViewController < NSViewController

  def loadView
    self.view = MainView.alloc.initWithFrame(CGRect.new([0, 0], [200, 360]))
  end
end
