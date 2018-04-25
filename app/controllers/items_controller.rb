class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @new_item = Item.new
  end

  def create
    Item.create items_params
    redirect_to items_path
  end

  def edit
    @item = item
  end

  def update
    item.update items_params
    redirect_to items_path
  end

  def destroy
    item.destroy
    redirect_to items_path
  end

  private

  def items_params
    params.require(:item).permit(:name, :price, :form_of_issue, :indications,
                                 :contraindications, :side_effects, :mode_of_application,
                                 :reg_data, :category, :photo)
  end

  def item
    Item.find params[:id]
  end
end
