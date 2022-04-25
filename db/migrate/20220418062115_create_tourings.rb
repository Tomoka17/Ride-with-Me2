class CreateTourings < ActiveRecord::Migration[6.0]
  def change
    create_table :tourings do |t|
      t.string :title,        null: false
      t.integer :weather_id,  null: false
      t.integer :mileage,     null: false
      t.text :recording,      null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
