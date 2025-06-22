class Integer
  def one?
    self.eql?(1)
  end
end

module Puzzles
  class Calculate < BaseService
    include Field
    include Figures

    attr_accessor :month, :date, :combinations, :roll_result, :figures_count, :figures_result, :selected_figures,
      :poulated_row_2, :poulated_row_3, :poulated_row_4, :poulated_row_5, :poulated_row_6, :poulated_row_7,
      :next_figure, :popualted_from_start, :populated_in_end

    def initialize(month, date)
      self.month = month.to_i
      self.date = date.to_i
      self.combinations = []
      self.poulated_row_5 = [0, 0, 0, 0, 0, 0, 0]
      self.poulated_row_6 = [0, 0, 0, 0, 0, 0, 0]
      self.poulated_row_7 = [0, 0, 0]
    end

    def call
      populate_field
    rescue => e
      puts e
      puts e.backtrace.first
      binding.pry
    end

    private

    def populate_field
      self.selected_figures = figures

      pre_populate_row_2
      pre_populate_row_3
      pre_populate_row_4

      populate_second_row
      populate_third_row
    end

    private

    def pre_populate_row_2
      self.poulated_row_2 = selected_figures.map(&:second).first(figures_count).flatten
    end

    def pre_populate_row_3
      self.poulated_row_3 = selected_figures.map(&:third).first(figures_count).flatten << 0
    end

    def pre_populate_row_4
      self.poulated_row_4 = selected_figures.map(&:fourth).first(figures_count).flatten << 0
    end

    def populate_second_row
      poulated_row_2[month - 7] = 1 if month > 6
      populate_row_2_to_max
    end

    def test
      Dir.glob("#{FOLDER_PATH}/*").each do |file_path|
        filename = File.basename(file_path)

        day = filename.split("_").first.to_i

        date = Date.new(2025, MONTH, day)

        calendar_image = CalendarImage.new(date: date)
        calendar_image.image.attach(
          io: File.open(file_path),
          filename: filename,
          content_type: Marcel::MimeType.for(file_path)
        )

        calendar_image.save
      end
    end

    def populate_third_row
      poulated_row_2[date] = 1 if date < 7
      populate_row_3_to_max
    end

    def populate_row_2_to_max      
      return if poulated_row_2.all?(&:one?)

      self.next_figure = selected_figures[figures_count]
      figure_first_row = next_figure.first
      row_2_first_empty_index = poulated_row_2.index(0)
      free_slots = poulated_row_2.drop(row_2_first_empty_index).index(1) || poulated_row_2.drop(row_2_first_empty_index).count
      return populate_field if free_slots < figure_first_row.count

      self.figures_count += 1
      self.popualted_from_start = poulated_row_2[0...row_2_first_empty_index]
      populated_in_end_index = (poulated_row_2[row_2_first_empty_index..-1].index(1) || poulated_row_2.drop(row_2_first_empty_index).count) + popualted_from_start.count
      self.populated_in_end = poulated_row_2[populated_in_end_index..-1]
      self.poulated_row_2 = popualted_from_start + figure_first_row + populated_in_end
      populate_row_3_after_row_2
      return if poulated_row_2.all?(&:one?)
      
      populate_row_2_to_max
    end

    def populate_row_3_after_row_2
      next_figure
      binding.pry
    end

    def populate_row_3_to_max
      return if poulated_row_3.all?(&:one?)

      
    end

    def figures
      self.figures_result = roll_figures!

      tryies = 0
      while inappropriate_combination?
        puts roll_result.flatten.join

        self.combinations << roll_result.flatten.join

        self.figures_result = roll_figures!

        tryies += 1

        raise "more than 2000 tries" if tryies > 2000
      end

      figures_result
    end

    def inappropriate_combination?
      return true if first_figures_row_invalid? || second_figures_row_invalid? || third_figures_row_invalid? || fourth_figures_row_invalid? || roll_result.flatten.join.in?(combinations)

      sum = 0
      result = false
      self.figures_count = 1
      figures_result.map(&:first).each_with_index do |element, i|
        self.figures_count += i
        sum += element.count
        break result if sum.eql?(6)
        break result = true if sum > 6
      end

      return result if result

      figures_result.map(&:second).first(figures_count).flatten.count > 6 || figures_result.map(&:second).first(figures_count).compact.flatten.count > 7 || figures_result.map(&:third).first(figures_count).compact.flatten.count > 7
    end

    def first_figures_row_invalid?
      return false if month > 6

      figures_result.map(&:first).flatten.first(6).select { |el| el.zero? }.count != 1 || figures_result.map(&:first).flatten.first(6)[month - 1].one?
    end

    def second_figures_row_invalid?
      return false if month <= 6

      figures_result.map(&:first).flatten.first(6).any?(&:zero?) || !figures_result.map(&:second).flatten.first(6)[month - 7].zero?
    end

    def third_figures_row_invalid?
      return false if date > 7

      figures_result.map(&:third).flatten.first(7)[date - 1].one?
    end

    def fourth_figures_row_invalid?
      return false if date <= 7 || date > 14

      figures_result.map(&:fourth).flatten.first(7)[date - 7].one?
    end

    def roll_figures!
      self.roll_result = []

      f_with_p = { 1 => 2, 2 => 4, 3 => 4, 4 => 8, 5 => 4, 6 => 8, 7 => 8, 8 => 8 }.to_a.shuffle.to_h
      # f_with_p = { 2 => 3, 6 => 6, 2 => 3, 6 => 6, 2 => 3, 6 => 6, 2 => 3, 6 => 6 }
      f_with_p.map do |figure, positions|
        position = rand(1..positions)
        # position = positions.eql?(3) ? 3 : 6
        roll_result << [figure, position]
        Figures.const_get("FIGURE#{figure}_POS#{position}")
      end
    end
  end
end
