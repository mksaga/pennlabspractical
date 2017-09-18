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
    @card = Card.create(card_params)

    if @card.save
      redirect_to cards_path
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
