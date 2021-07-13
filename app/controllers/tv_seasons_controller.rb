class TvSeasonsController < ApplicationController
  
  def index
    if params[:search].present?
      actor_ids = Person.where('lower(name) like ?', "%" + params[:search].downcase + "%").pluck(:id)
      @tv_seasons = TvSeason.includes(:genre, :reviews).where(id: actor_ids).order(created_at: :desc).page(params[:page])
    else
      @tv_seasons = TvSeason.includes(:genre, :reviews).order(created_at: :desc).page(params[:page])
    end
  end

end