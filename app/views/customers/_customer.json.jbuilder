json.extract! customer, :id, :name, :address, :phone, :rating, :created_at, :updated_at
json.url customer_url(customer, format: :json)
