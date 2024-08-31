class LendingHistorySerializer < ActiveModel::Serializer
  attributes :student, :book, :date_lent, :date_returned, :status
  
  belongs_to :student
  belongs_to :book
end
