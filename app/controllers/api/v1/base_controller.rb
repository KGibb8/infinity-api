# frozen_string_literal: true

class Api::V1::BaseController < ApplicationController
  respond_to :json

  before_action :current_order

  helper_method :current_order

  def current_order
    @current_order = Order.last_order || Order.new(submitted: false)
  end
end
