class Bg < ActiveRecord::Base
	belongs_to :pj
	attr_accessible :bname, :priority, :pj_id
	validates :bname, :priority, :pj_id, :presence => true
end
