class Task < ActiveRecord::Base
  belongs_to :pitem
  attr_accessible :tname, :priority, :expires_at, :pitem_id, :status
  validates :tname, :priority, presence: true
end
