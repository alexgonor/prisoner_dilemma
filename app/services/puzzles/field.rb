module Puzzles
  module Field
    def field
      [row(6), row(6), row(7), row(7), row(7), row(7), row(3)]
    end

    def row(count)
      Array.new(count, 0)
    end
  end
end
