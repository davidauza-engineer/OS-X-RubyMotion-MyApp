module NotificationSender

  def notification_send(title, subtitle, information)
    center = NSUserNotificationCenter.defaultUserNotificationCenter

    notification = NSUserNotification.alloc.init
    notification.title = title
    notification.subtitle = subtitle
    notification.informativeText = information

    center.deliverNotification(notification)
  end
end
