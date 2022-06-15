class PurchasesController < ApplicationController

  # GET /purchases or /purchases.json
  def index
    @purchases = FatZebra::Purchase.search.data
  end

  # GET /purchases/1 or /purchases/1.json
  def show
    @purchase = FatZebra::Purchase.find(params[:id])
  end

  # POST /purchases or /purchases.json
  def create

  end

  # PATCH/PUT /purchases/1 or /purchases/1.json
  def update

  end

  # DELETE /purchases/1 or /purchases/1.json
  def destroy
  end
end
