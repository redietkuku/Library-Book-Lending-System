class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :bio, :no_of_books, :contact

  has_many :books
  belongs_to :books
end
