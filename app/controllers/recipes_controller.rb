class RecipesController < ApplicationController

	before_action :find_recipe, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

  def index
  	@recipes = Recipe.all
  end

  def show
  end

  def new
  	@recipe = current_user.recipes.build
  	
  end

  def create
  	@recipe = current_user.recipes.build(recipe_params)
  	if @recipe.save
  		redirect_to @recipe
  	else
  		redirect_to 'new'
  	end
  end

  def edit
  end

  private 

 	def find_recipe
		@recipe = Recipe.find(params[:id])
  end

 	def recipe_params
  	params.require(:recipe).permit(:title, :description, :image, :category_id)
  end
end




	# def recipe_params
	# 	params.require(:recipe).permit(:title, :description, :image, :category, ingredients_attributes: [:id, :name, :done, :_destroy], directions_attributes: [:id, :name, :done, :_destroy])
	# 	 # params.require(:project).permit(:name, :description,              tasks_attributes: [:id, :description, :done, :_destroy])
	# end
