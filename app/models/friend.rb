class Friend
  extend ServiceConnection

  def self.request
    request_resource('http://gzfrancisco.name/resources/friends.json')
  end
end
