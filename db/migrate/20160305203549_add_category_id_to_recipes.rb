class AddCategoryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :category_id, :integer
    remove_column :recipes, :category
  end
end
