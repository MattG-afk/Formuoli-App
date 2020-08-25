class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quantity
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
