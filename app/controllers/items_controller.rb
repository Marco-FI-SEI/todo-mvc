class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to @list
    else
      render "lists/show"
    end
  end

  # PATCH - /lists/:list_id/items/:id
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to @item.list
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to @item.list
  end

  private

  def item_params
    params.require(:item).permit(:description, :status)
  end
end