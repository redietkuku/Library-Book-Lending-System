class LendingHistory < ApplicationRecord
  belongs_to :student
  belongs_to :book
  enum status: {returned:0, lent:1}
end
