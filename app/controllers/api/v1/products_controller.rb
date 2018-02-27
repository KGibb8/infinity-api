# frozen_string_literal: true

class Api::V1::ProductsController < Api::V1::BaseController
  before_action :find_product, only: [:show]

  def index
    @products = Product.includes(:product_options).paginate(page: params[:page], per_page: 30)
  end

  def show; end

  private

  def find_product
    @product = Product.find(params[:id])
  end
end
