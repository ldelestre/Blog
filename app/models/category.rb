# ActiveRecords associations
# Les articles appartiennent aux articles

class Category < ApplicationRecord
	belongs_to :article
end