class StrategiesController < ApplicationController
  def index
    @strategies = Strategies::Index.call
  end

  def new
    @strategy = Strategy.new
  end

  def create
    Strategies::Create.call(*strategy_params.values)

    redirect_to strategies_path, notice: "Strategy was successfully created."
  rescue StandardError => e
    flash[:alert] = e.message
    redirect_to :new
  end

  def rating
    @strategies = Strategies::Rating.call
  end

  private

  def strategy_params
    params.require(:strategy).permit(:title, :description)
  end
end
