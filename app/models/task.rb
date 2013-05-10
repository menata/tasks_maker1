class Task < ActiveRecord::Base
  belongs_to :pitem
  paginates_per 20
  attr_accessible :tname, :priority, :expires_at, :pitem_id, :status
  validates :tname, :priority, :expires_at, presence: true
end
