require 'rails_helper'

RSpec.describe "purchases/index", type: :view do
  before(:each) do
    assign(:purchases, [
      Purchase.create!(
        fatzebra_id: "Fatzebra",
        amount_cents: "Amount Cents",
        amount_currency: "Amount Currency"
      ),
      Purchase.create!(
        fatzebra_id: "Fatzebra",
        amount_cents: "Amount Cents",
        amount_currency: "Amount Currency"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    assert_select "tr>td", text: "Fatzebra".to_s, count: 2
    assert_select "tr>td", text: "Amount Cents".to_s, count: 2
    assert_select "tr>td", text: "Amount Currency".to_s, count: 2
  end
end
