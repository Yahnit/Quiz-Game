class Status < ApplicationRecord
  belongs_to :question
  belongs_to :subgenre
  belongs_to :user
end
