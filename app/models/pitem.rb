class Pitem < ActiveRecord::Base
   attr_accessible :pname
   validates :pname, presence: true
   has_many :tasks
end
