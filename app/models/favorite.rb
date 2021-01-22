class Favorite < ApplicationRecord
  belongs_to :joke
  belongs_to :user
end
