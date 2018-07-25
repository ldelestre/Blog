# ActiveRecords associations
# Les users ont plusieurs articles, comments, likes

class User < ApplicationRecord
	has_many :article
	has_many :comment
	has_many :like
end