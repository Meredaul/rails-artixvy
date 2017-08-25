class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.all.reject { |artwork| artwork.purchase || artwork.user == current_user }
  end

  def dashboard
    @purchases = current_user.purchases
    @user_artworks_sold = current_user.artwork.select { |user_artwork| user_artwork.purchase }
    @user_artworks_notsold = current_user.artwork.reject { |user_artwork| user_artwork.purchase }
  end

end

