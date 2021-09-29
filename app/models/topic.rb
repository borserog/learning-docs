class Topic < ApplicationRecord
  belongs_to :user
  has_many :document

  accepts_nested_attributes_for :document
end
