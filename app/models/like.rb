# ActiveRecords associations
# Les likes appartiennent aux users

class Like < ApplicationRecord
	belongs_to :article
	belongs_to :user
end