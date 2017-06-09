json.extract! schedule_item, :id, :price, :schedule_id, :product_id, :created_at, :updated_at
json.url schedule_item_url(schedule_item, format: :json)
