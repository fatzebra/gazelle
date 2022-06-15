require 'rails_helper'

RSpec.describe "purchases/edit", type: :view do
  before(:each) do
    @purchase = assign(:purchase, Purchase.create!(
      fatzebra_id: "MyString",
      amount_cents: "MyString",
      amount_currency: "MyString"
    ))
  end

  it "renders the edit purchase form" do
    render

    assert_select "form[action=?][method=?]", purchase_path(@purchase), "post" do

      assert_select "input[name=?]", "purchase[fatzebra_id]"

      assert_select "input[name=?]", "purchase[amount_cents]"

      assert_select "input[name=?]", "purchase[amount_currency]"
    end
  end
end
