class Pitem < ActiveRecord::Base
   attr_accessible :pname
   validates :pname, presence: true
   has_many :tasks
   accepts_nested_attributes_for :tasks
end
