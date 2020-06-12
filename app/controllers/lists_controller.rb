class ListsController < ApplicationController
  before_action :authentication_required
  
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # required for the form wrapper
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      # required as form is rendered in index rather than new
      @lists = List.all
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
