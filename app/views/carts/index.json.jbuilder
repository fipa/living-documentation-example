json.array!(@carts) do |cart|
  json.extract! cart, :id, :user_id, :status
  json.url cart_url(cart, format: :json)
end
