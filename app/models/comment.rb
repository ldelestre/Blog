# ActiveRecords associations
# Les comments appartiennent aux users

class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :user
end