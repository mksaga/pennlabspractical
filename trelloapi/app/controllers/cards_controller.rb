class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])
    if @card.save
      # handle successful save
    else
      render 'new'
    end
  end
  
end
