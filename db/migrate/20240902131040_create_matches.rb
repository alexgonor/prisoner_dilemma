class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.integer :competition_id, null: false
      t.string :winner

      t.timestamps
    end

    add_index :matches, :competition_id
  end
end
