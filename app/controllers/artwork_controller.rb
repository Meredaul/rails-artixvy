class ArtworkController < ApplicationController

  def index
    # params[:search]

    @artworks = Artwork.all.reject { |artwork| artwork.purchase || artwork.user == current_user }
    #mutiple input
    if params[:category].present? && params[:title].present?
      @artworks = []
      artworks_category = []
      Artwork.where(category: params[:category]).map do |artwork|
        artworks_category << artwork
      end
      artworks_category.each do |artwork|
        @artworks << artwork if artwork.title.downcase == params[:title].downcase
      end
    elsif params[:category].present?
      @artworks = Artwork.where(category: params[:category])
    elsif params[:title].present?
      @artworks = Artwork.where(title: params[:title])
    else
      @artworks = Artwork.all
    end

    #single input
    # if params[:query].present?
    #   @artworks = []
    #   Artwork.where(title: params[:query]).map do |artwork|
    #     @artworks << artwork
    #   end
    #   Artwork.where(category: params[:query]).map do |artwork|
    #     @artworks << artwork
    #   end
    # end

    return @artworks

  end

  def show
    @artwork = Artwork.find(params[:id])
    @artwork_coordinates = { lat: @artwork.latitude, lng: @artwork.longitude }
  end


  def new
    @artwork = Artwork.new
  end

  def create
    new_artwork = Artwork.new(artwork_params)
    new_artwork.user = current_user
    new_artwork.save
    redirect_to artwork_path (new_artwork)
  end

  def destroy
    artwork_to_delete = Artwork.find(params[:id])
    artwork_to_delete.destroy
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :size, :picture, :price, :category, :date)
  end
end
