class Recipe < ActiveRecord::Base

	belongs_to :user
	belongs_to :category

	mount_uploader :image, ImageUploader
	
end
