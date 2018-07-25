# ActiveRecords associations
# Les articles appartiennent aux users
# Les articles ont plusieurs comments et likes

class Article < ApplicationRecord
	belongs_to :user

	has_many :comment
	has_many :like
end