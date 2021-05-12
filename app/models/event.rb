class Event < ApplicationRecord
	belongs_to :user
	has_many_attached :images
	
	extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
