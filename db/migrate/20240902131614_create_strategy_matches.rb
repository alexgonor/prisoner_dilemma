class CreateStrategyMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :strategy_matches do |t|
      t.integer :strategy_id, null: false
      t.integer :match_id, null: false
      t.jsonb :moves, null: false, default: []
      t.integer :points, null: false

      t.timestamps
    end

    add_index :strategy_matches, :strategy_id
    add_index :strategy_matches, :match_id
  end
end
