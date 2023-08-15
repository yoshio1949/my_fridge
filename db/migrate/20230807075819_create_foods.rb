class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.references :user, null: false
      t.string :name, null: false
      t.text :description
      t.integer :number, null: false
      t.string :unit, null: false
      t.date :purchase, null: false
      t.string :location, null: false

      t.timestamps
    end
  end
end
