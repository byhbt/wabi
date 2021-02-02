require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      slug: "MyString",
      vendor: "MyString",
      body: "MyText",
      tag: "MyText",
      published: false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[slug]"

      assert_select "input[name=?]", "product[vendor]"

      assert_select "textarea[name=?]", "product[body]"

      assert_select "textarea[name=?]", "product[tag]"

      assert_select "input[name=?]", "product[published]"
    end
  end
end
