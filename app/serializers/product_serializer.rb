class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :title, :upc, :weight, :weight_unit
end
