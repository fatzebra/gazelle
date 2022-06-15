require 'rails_helper'

RSpec.describe "purchases/show", type: :view do
  before(:each) do
    @purchase = assign(:purchase, Purchase.create!(
      fatzebra_id: "Fatzebra",
      amount_cents: "Amount Cents",
      amount_currency: "Amount Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fatzebra/)
    expect(rendered).to match(/Amount Cents/)
    expect(rendered).to match(/Amount Currency/)
  end
end
