module Strategies
  class Index < BaseService
    def call
      Strategy.order(:title)
    end
  end
end
