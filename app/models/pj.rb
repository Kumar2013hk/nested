class Pj < ActiveRecord::Base
		has_many :bgs
	attr_accessible :pname, :user_id
	validates :pname, :user_id, :presence => true
end
