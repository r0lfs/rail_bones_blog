class User < ApplicationRecord
	validates :email, uniqueness: true
	validates :dis_name, uniqueness: { case_sensitive: false }
	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy
end
