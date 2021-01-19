module ServiceConnection
  def request_resource(url_string)
    url = NSURL.URLWithString(url_string)
    data = NSData.dataWithContentsOfURL(url)
    error_ptr = Pointer.new(:object)
    object = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingMutableContainers, error: error_ptr)
    object
  end
end
