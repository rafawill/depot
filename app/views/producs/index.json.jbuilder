json.array!(@producs) do |produc|
  json.extract! produc, :id, :title, :description, :image_url, :price
  json.url produc_url(produc, format: :json)
end
