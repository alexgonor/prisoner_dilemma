class CompetitionsController < ApplicationController
  def create
    if ids.blank?
      flash[:alert] = "You must select at least two strategies."
      redirect_to root_path
    else
      @result = Competitions::Create.call(ids)
      render :create
    end
  end

  private

  def ids
    params.require(:strategy_ids)
  end
end
