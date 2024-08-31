class StudentSerializer < ActiveModel::Serializer
  attributes :code, :name, :batch, :semester

  belongs_to :lending_histories
end
