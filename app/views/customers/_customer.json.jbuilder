json.extract! customer, :id, :fullname, :address, :complement, :neighborhood, :city, :state, :zip, :phone, :email, :company_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
