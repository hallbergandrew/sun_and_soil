class Nonprofit < ActiveRecord::Base
  has_many :charges
  validates :name, presence: true
end
