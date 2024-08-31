class BookSerializer < ActiveModel::Serializer
  attributes :code, :name, :description, :edition, :published_date, :status

  belongs_to :author
  belongs_to :lending_histories
end
