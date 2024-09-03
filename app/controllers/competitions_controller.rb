class CompetitionsController < ApplicationController
  def create
    if ids.blank? || ids.count < 2
      flash[:alert] = "You must select at least two strategies."
      redirect_to root_path
    else
      @result = Competitions::Create.call(ids)
      render :create
    end
  rescue StandardError => e
    flash[:alert] = e.message
    redirect_to root_path
  end

  private

  def ids
    params.require(:strategy_ids)
  end
end
