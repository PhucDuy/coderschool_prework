class AddViewCountNumberToArticles < ActiveRecord::Migration[5.0]
	def up
		add_column :articles, :view_count, :integer ,:default => 0
	end
end
