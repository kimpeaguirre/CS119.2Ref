class InventoryItemsController < ApplicationController

  def index
    @inventory_items = InventoryItem.all
    render(:template => "inventory_items/index")
  end

  def show
    @inventory_item = InventoryItem.find(params[:id])
  end

  def new
    @inventory_item = InventoryItem.new
    render(:template => "inventory_items/new")
  end

  def create
    @inventory_item = InventoryItem.new(item_params)
    if @inventory_item.save
      redirect_to inventory_items_path
    else
      render(:template => "inventory_items/new")
    end
  end

  def edit
    @inventory_item = InventoryItem.find(params[:id])

    render(:template => "inventory_items/edit")
  end

  def update
    @inventory_item = InventoryItem.find(params[:id])

    if @inventory_item.update(inventory_item_params)
      redirect_to item_path(@inventory_item)
    else
      render(:template => "inventory_items/edit")
    end
  end

  def destroy
    @inventory_item = InventoryItem.find(params[:id])
    @inventory_item.destroy!
    redirect_to inventory_items_path
  end

  def item_params
    params.require(:inventory_item).permit!
  end
end