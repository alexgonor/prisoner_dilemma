class PuzzlesController < ApplicationController
  def select_date; end

  def calculate
    Puzzles::Calculate.call(*calculate_params.values)
  end

  private

  def calculate_params
    params.permit(:month, :date)
  end
end
