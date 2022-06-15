class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :fatzebra_id
      t.string :amount_cents
      t.string :amount_currency

      t.timestamps
    end
  end
end
