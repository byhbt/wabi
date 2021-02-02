require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      slug: "MyString",
      vendor: "MyString",
      body: "MyText",
      tag: "MyText",
      published: false
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[slug]"

      assert_select "input[name=?]", "product[vendor]"

      assert_select "textarea[name=?]", "product[body]"

      assert_select "textarea[name=?]", "product[tag]"

      assert_select "input[name=?]", "product[published]"
    end
  end
end
