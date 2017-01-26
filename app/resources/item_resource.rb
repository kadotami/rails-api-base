class ItemResource < JSONAPI::Resource
  immutable
  attributes :name, :description, :image_id
end
