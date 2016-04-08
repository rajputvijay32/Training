class OrderNotifier < ActionMailer::Base
  default from: "vijay.rajput@traveltriangle.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
=begin
  def received
    @greeting = "Hi"

    mail to: "vijaysinghrajput75@gmail.com"
  end
=end

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

=begin
  def shipped
    @greeting = "Hi"

    mail to: "vijaysinghrajput75@gmail.com"
  end
=end
end
