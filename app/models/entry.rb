class Entry < ActiveRecord::Base
  belongs_to :user
  has_many :entries_tags
  has_many :tags, through: :entries_tags

end
