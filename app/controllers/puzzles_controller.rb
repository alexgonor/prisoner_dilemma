class PuzzlesController < ApplicationController
  def select_date; end

  def calculate
    @calendar_image = CalendarImage.find_by(date: "2025-#{params[:month]}-#{params[:date]}")
  end

  private

  def calculate_params
    params.permit(:month, :date)
  end
end
