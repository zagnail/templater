json.extract! account, :id, :balance, :currency, :name, :created_at, :updated_at
json.url account_url(account, format: :json)
