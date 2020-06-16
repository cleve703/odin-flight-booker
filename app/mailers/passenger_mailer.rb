class PassengerMailer < ApplicationMailer
  default from: 'noreply@codingcop.com'

  def thank_you_email(passengers)
    @url = 'http://codingcop.com'
    passengers.each {|passenger| mail(to: passenger.email, subject: 'Thank you!')}
  end
end
