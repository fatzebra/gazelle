json.extract! purchase, :id, :fatzebra_id, :amount_cents, :amount_currency, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
