class Tag < ActiveRecord::Base
  has_many :entries
  has_many :users
end
