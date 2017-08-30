class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(items_params)

  	if @item.save
  		redirect_to items_path
  	else
  		render :new
  	end
  end

  def edit
    @item = Item.find(params[:id])
  end

  private

  	def items_params
  		params.require(:item).permit(:title, :user, :body)
  	end
end
