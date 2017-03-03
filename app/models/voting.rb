class Voting < ApplicationRecord
  belongs_to :user
  has_many :agree
  has_many :not_agree
end
