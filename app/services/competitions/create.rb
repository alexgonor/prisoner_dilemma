module Competitions
  class Create < BaseService
    attr_reader :ids

    def initialize(ids)
      @ids = ids
    end

    def call
      competition_id = create_competition.id

      matches = []
      threads = []
      pairs.each do |pair|
        threads << Thread.new do
          matches << Matches::Play.call(pair, competition_id)
        end
      end
      threads.each(&:join)

      format_response(matches)
    end

    private

    def format_response(matches)
      matches.flatten
             .group_by(&:strategy_id)
             .map { |_id, data| [data.first.strategy.title, data.sum(&:points)] }
             .sort_by(&:last)
             .reverse.to_h
    end

    def create_competition
      Competition.create
    end

    def pairs
      @result = []
      strategies.each do |strategy|
        strategies.each do |opponent|
          next if inappropriate_pair?(strategy, opponent)

          @result << [strategy, opponent]
        end
      end
      @result
    end

    def inappropriate_pair?(strategy, opponent)
      strategy.eql?(opponent) || already_selected?(strategy, opponent)
    end

    def already_selected?(strategy, opponent)
      @result.any? { |item| item.include?(strategy) && item.include?(opponent) }
    end

    def strategies
      Strategy.where(id: ids)
    end

    def matches_count
      ids.count * (ids.count - 1) / 2
    end
  end
end
