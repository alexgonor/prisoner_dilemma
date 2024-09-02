class CreateStrategies < ActiveRecord::Migration[7.2]
  def change
    create_table :strategies do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.text :code, null: false # literally ruby code to execute

      t.timestamps
    end
  end
end
