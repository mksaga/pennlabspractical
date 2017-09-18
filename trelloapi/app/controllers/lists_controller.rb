class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:success] = "List created!"
      redirect_to @list
    else
      render 'new'
    end
  end

  private

    def list_params
      params.require(:list).permit(:title, :order)
    end

end
