class Question < ApplicationRecord
  belongs_to :subgenre
  has_many :choices
end
