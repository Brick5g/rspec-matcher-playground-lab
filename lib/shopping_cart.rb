# frozen_string_literal: true

class ShoppingCart
  attr_reader :items

  def initialize
    @items = []
    @checked_out = false
  end

  def add_item(item)
    raise 'Cart already checked out' if @checked_out

    @items << item
  end

  def remove_item(item)
    raise 'Cart already checked out' if @checked_out

    @items.delete(item)
  end

  def total
    @items.map { |item| item.respond_to?(:price) ? item.price : 0 }.sum
  end

  def empty?
    @items.empty?
  end

  def checkout!
    raise 'Cart is empty' if empty?

    @checked_out = true
  end

  def checked_out?
    @checked_out
  end
end
