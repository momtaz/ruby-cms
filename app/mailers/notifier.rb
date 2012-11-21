class Notifier < ActionMailer::Base
	default :from => 'fatema <"fatemamomtaz@gmail.com.com">'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.comment_received.subject
  #
  
  def comment_received(order)
  	  @comment = order
mail :to => order.email, :subject => 'Pragmatic Store Order Confirmation'
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.comment_shipped.subject
  #
  def comment_shipped(order)
  	  @comment = order
mail :to => order.email, :subject => 'Pragmatic Store Order Shipped'

    @greeting = "Hi"

    mail to: "fatemamomtaz@gmail.com"
  end
end
