require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
      fatzebra_id: "MyString",
      amount_cents: "MyString",
      amount_currency: "MyString"
    ))
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do

      assert_select "input[name=?]", "purchase[fatzebra_id]"

      assert_select "input[name=?]", "purchase[amount_cents]"

      assert_select "input[name=?]", "purchase[amount_currency]"
    end
  end
end
