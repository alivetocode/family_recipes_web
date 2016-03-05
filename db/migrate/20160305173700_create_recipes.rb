class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title, 					null: false
      t.text :description, 			null: false
      t.string :category, 			null: false
      t.string :image,	 				null: false
      t.integer :user_id,				null: false

      t.timestamps 							null: false
    end
  end
end
