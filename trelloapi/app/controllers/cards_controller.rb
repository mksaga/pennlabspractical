class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      # handle successful save
    else
      render 'new'
    end
  end

  private

    def card_params
      params.require(:card).permit(:title, :description)
    end

end
