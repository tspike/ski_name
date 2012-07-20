class Name < ActiveRecord::Base
  attr_accessible :full, :initial, :position

  validates :full, :initial, :position, :presence => true
  validates :full, :uniqueness => true

  def to_s
    full
  end
end
