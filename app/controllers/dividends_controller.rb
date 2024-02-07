class DividendsController < ApplicationController
  before_action :set_dividend, only: %i[ show update destroy ]

  # GET /dividends
  def index
    @dividends = Dividend.all

    render json: @dividends
  end

  # GET /dividends/1
  def show
    render json: @dividend
  end

  # POST /dividends
  def create
    @dividend = Dividend.new(dividend_params)

    if @dividend.save
      render json: @dividend, status: :created, location: @dividend
    else
      render json: @dividend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dividends/1
  def update
    if @dividend.update(dividend_params)
      render json: @dividend
    else
      render json: @dividend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dividends/1
  def destroy
    @dividend.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dividend
    @dividend = Dividend.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dividend_params
    params.require(:dividend).permit(:type, :payment, :cum_date, :ex_date)
  end
end
