class Book < ApplicationRecord
  belongs_to :author
  enum status: {lent:0, onhold:1, available:2, notToBeLent:3}
end
