class CreateCalendarImages < ActiveRecord::Migration[7.2]
  def change
    create_table :calendar_images do |t|
      t.date :date

      t.timestamps
    end
  end
end
