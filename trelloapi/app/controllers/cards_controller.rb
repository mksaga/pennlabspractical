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
    @list = List.find_by(card_params[:list_id])
    @card = @list.cards.build(card_params)
    if @card.save
      flash[:success] = "Card created!"
      redirect_to @card
    else
      render 'new'
    end
  end

  def index
    @cards = Card.all
  end

  private

    def card_params
      params.require(:card).permit(:title, :description, :list_id)
    end

end
