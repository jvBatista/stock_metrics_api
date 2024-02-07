class StocksController < ApplicationController
  before_action :set_stock, only: %i[ show update destroy ]

  # GET /stocks
  def index
    @stocks = Stock.all

    render json: @stocks
  end

  # GET /stocks/1
  def show
    render json: @stock
  end

  # POST /stocks
  def create
    # @stock = Stock.new(stock_params)

    # if @stock.save
    #   render json: @stock, status: :created, location: @stock
    # else
    #   render json: @stock.errors, status: :unprocessable_entity
    # end

    new_stocks = []

    params[:stocks].each do |stock|
      new_stock = Stock.new(ticker: stock)
      new_stock.save
      new_stocks << new_stock
    end

    render json: new_stocks
  end

  # PATCH/PUT /stocks/1
  def update
    if @stock.update(stock_params)
      render json: @stock
    else
      render json: @stock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stocks/1
  def destroy
    @stock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_params
      params.require(:stock).permit(:ticker, :stock_source_id, :company_source_id)
    end
end
