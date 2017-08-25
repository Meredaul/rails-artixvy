class PurchasesController < ApplicationController

  def create
    new_purchase =  Purchase.new()
    new_purchase.artwork = Artwork.find(params[:artwork_id])
    new_purchase.user = current_user
    new_purchase.save
    redirect_to root_path
  end
end
