class Pitem < ActiveRecord::Base
   attr_accessible :pname
   validates :pname, presence: true
   has_many :tasks
   belongs_to :users
   accepts_nested_attributes_for :tasks
end
