class ItemsController < ApplicationController
  include JSONAPI::ActsAsResourceController

  def index
    @items = Item.all
    render json: {"data": @items, 'user':current_user}
  end

  def show
    id = params[:id]
    @item = Item.find(id)
    render json: @item
  end

  def create
    name = params[:name]
    @item =Item.new
    @item.attributes = {name: name}
    @item.save()
    render json: @item
  end
end
