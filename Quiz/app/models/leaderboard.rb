class Leaderboard < ApplicationRecord
  belongs_to :genre
  belongs_to :subgenre
  belongs_to :user
end
