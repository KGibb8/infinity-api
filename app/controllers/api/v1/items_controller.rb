# frozen_string_literal: true

class Api::V1::ItemsController < Api::V1::BaseController
  def create
    @item = current_order.items.new(item_params.merge(user: current_user))
    @item.order.save
  end

  def item_params
    params.require(:item).permit(:product_option_id)
  end
end
