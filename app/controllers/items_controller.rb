class ItemsController < ApplicationController
  include JSONAPI::ActsAsResourceController
  before_action :authenticate_user

  def index
    @items = Item.all

    render json: @items
  end

  def show
    id = param[:id]
    @item = Item.find(id)
    render json: @item
  end
end
