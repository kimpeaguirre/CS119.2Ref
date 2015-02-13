class InventoryTransactionsController < ApplicationController

  def index
    @inventory_transactions = InventoryTransaction.all
    render(:template => "inventory_transactions/index")
  end

  def show
    @inventory_transaction = InventoryTransaction.find(params[:id])
  end

  def new
    @inventory_transaction = InventoryTransaction.new
    render(:template => "inventory_transactions/new")
  end

  def create
    @inventory_transaction = InventoryTransaction.new(item_params)
    if @inventory_transaction.save
      redirect_to inventory_transactions_path
    else
      render(:template => "inventory_transactions/new")
    end
  end

  def edit
    @inventory_transaction = InventoryTransaction.find(params[:id])

    render(:template => "inventory_transactions/edit")
  end

  def update
    @inventory_transaction = InventoryTransaction.find(params[:id])

    if @inventory_transaction.update(inventory_transaction_params)
      redirect_to inventory_transaction_path(@inventory_transaction)
    else
      render(:template => "inventory_transactions/edit")
    end
  end

  def destroy
    @inventory_transaction = InventoryTransaction.find(params[:id])
    @inventory_transaction.destroy!
    redirect_to inventory_transactions_path
  end

  def inventory_transaction_params
    params.require(:inventory_transaction).permit!
  end
end