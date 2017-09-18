class CardsController < ApplicationController

  def show
    @card = Card.find(params[:id])
    card_title = @card.title
    card_descr = @card.description
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      flash[:success] = "Card created!"
      redirect_to @card
    else
      render 'new'
    end
  end

  private

    def card_params
      params.require(:card).permit(:title, :description)
    end

end
