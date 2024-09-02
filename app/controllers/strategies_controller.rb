class StrategiesController < ApplicationController
  def index
    @strategies = Strategies::Index.call
  end
end
