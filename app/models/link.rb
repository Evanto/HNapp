class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
end
