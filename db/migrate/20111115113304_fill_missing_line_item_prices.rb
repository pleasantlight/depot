class FillMissingLineItemPrices < ActiveRecord::Migration
  def up
    LineItem.all.each do |line_item|
      if line_item.price <= 0.0
        line_item.update_attribute(:price, line_item.product.price)
      end
    end
  end

  def down
  end
end
