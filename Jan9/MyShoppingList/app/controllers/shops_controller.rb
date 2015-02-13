class ShopsController < ApplicationController

  def index
    @shops = Shop.all
    render(:template => "shops/index")
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
    render(:template => "shops/new")
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render(:template => "shops/new")
    end
  end

  def edit
    @shop = Shop.find(params[:id])

    render(:template => "shops/edit")
  end

  def update
    @shop = Shop.find(params[:id])

    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render(:template => "shops/edit")
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy!
    redirect_to shops_path
  end

  def shop_params
    params.require(:shop).permit!
  end
end