class PurchasesController < ApplicationController

  def create
    new_purchase =  Purchase.new(purchase_params)
    new_purchase.save
    redirect_to purchase_path(new_purchase)
  end
end
