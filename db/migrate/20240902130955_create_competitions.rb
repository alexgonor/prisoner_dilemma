class CreateCompetitions < ActiveRecord::Migration[7.2]
  def change
    create_table :competitions do |t|
      t.timestamps
    end
  end
end
