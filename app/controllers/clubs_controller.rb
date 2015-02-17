class ClubsController < ApplicationController
  before_filter :authorize, only: [:index, :show]

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

end
