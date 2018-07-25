# Création de la table Categories dans la database

class CreateCategories < ActiveRecord::Migration[5.2]
	def change
		create_table :categories do |t|
			t.string :name
			t.integer :article_id
			t.timestamps
		end
	end
end