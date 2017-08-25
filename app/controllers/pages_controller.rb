class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.all.reject { |artwork| artwork.purchase || artwork.user == current_user }
  end

  def dashboard
<<<<<<< HEAD
    # @purchases = current_user.purchases
    # @user_artworks_sold = current_user.artwork.select { |user_artwork| user_artwork.purchase }
    # @user_artworks_notsold = current_user.artwork.reject { |user_artwork| user_artwork.purchase }
=======
    @purchases = current_user.purchases
    @user_artworks_sold = current_user.artworks.select { |user_artwork| user_artwork.purchase }
    @user_artworks_notsold = current_user.artworks.reject { |user_artwork| user_artwork.purchase }
>>>>>>> 414b196cd0f6b0c8717d51a911a02f74a8d168ec
  end

end

