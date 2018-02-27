# frozen_string_literal: true

class Api::V1::OrdersController < Api::V1::BaseController
  before_action :find_order, only: [:show]

  def current
    @current_order = current_order
  end

  def show; end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
