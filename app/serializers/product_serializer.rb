class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :title, :weight, :weight_unit
end
