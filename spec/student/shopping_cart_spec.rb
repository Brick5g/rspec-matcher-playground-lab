# frozen_string_literal: true

describe ShoppingCart do
  subject(:cart) { ShoppingCart.new }

  let(:apple) { Item.new("Apple", 2) }
  let(:bread) { Item.new("Bread", 3) }

  describe "#total" do
    it "returns the total price of the items" do
      cart.add_item(apple)
      cart.add_item(bread)

      expect(cart.total).to eq(5)
    end
  end

  describe "#empty?" do
    it "is empty when first created" do
      expect(cart).to be_empty
    end
  end

  describe "#add_item" do
    it "includes an added item in the cart" do
      cart.add_item(apple)

      expect(cart.items).to include(apple)
    end

    it "changes the number of items by one" do
      expect {
        cart.add_item(apple)
      }.to change {
        cart.items.count
      }.by(1)
    end
  end

  describe "#checkout!" do
    it "raises an error when the cart is empty" do
      expect {
        cart.checkout!
      }.to raise_error(RuntimeError, "Cart is empty")
    end
  end
end