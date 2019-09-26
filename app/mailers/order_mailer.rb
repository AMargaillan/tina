class OrderMailer < ApplicationMailer

  def order_placed
    mail(to: "adeline.margaillan@gmail.com",
      subject: "A New Order Has Been Placed")
  end

end
