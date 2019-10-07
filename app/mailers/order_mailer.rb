class OrderMailer < ApplicationMailer

  def order_placed(order = :order_id)
    @order = order
    mail(to: "adeline.margaillan@gmail.com",
      subject: "A New Order Has Been Placed")
  end

end
