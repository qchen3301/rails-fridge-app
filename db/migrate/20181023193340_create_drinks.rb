class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :size
      t.boolean :alcoholic

      t.timestamps
    end
  end
end
