class Article < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

	def self.search(search)
		where("title || body ILIKE ?","%#{search}%")
	end
	def count_page_views
		self.view_count+=1
		save
	end
end
