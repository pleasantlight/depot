class OrderNotifier < ActionMailer::Base
  default from: "Hedzap <noam@hedzap.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)  
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
  
  def notify_error(err_message)
    @err_message = err_message
    mail to: 'to:noam@pleasantlight.com', subject: 'Pragmatic Store - Error'
    
  end
end
