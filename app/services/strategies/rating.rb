module Strategies
  class Rating < BaseService
    def call
      Strategy.left_joins(:strategy_matches)
              .group(:title)
              .order(total: :desc)
              .pluck(Arel.sql("title, coalesce(sum(points), 0) as total")).to_a
    end
  end
end
