class DeliveryOrdersController < ApplicationController
  def index
    delivery_orders_all = DeliveryOrder.all
    formatted_array = []
    formatted_json = {}

    delivery_orders_all.each do |order|
      delivery_orders_formatted = {}
      delivery_orders_formatted[:order_id] = order[:order_id]
      delivery_orders_formatted[:delivery_date] = order[:serving_datetime].to_date
      # for local DB
      # start_time = order[:serving_datetime].in_time_zone("Singapore")
      # end_time = order[:serving_datetime].in_time_zone("Singapore") + 30.minutes
      start_time = order[:serving_datetime]
      end_time = order[:serving_datetime] + 30.minutes
      delivery_orders_formatted[:delivery_time] = "#{start_time.to_s(:time)}-#{end_time.to_s(:time)}"
      formatted_array.push(delivery_orders_formatted)
    end

    formatted_json[:orders] = formatted_array
    render json: formatted_json
  end

  def show
    order = DeliveryOrder.find_by(order_id: params[:order_id])
    order_formatted = {}
    order_formatted[:order_id] = order[:order_id]
    order_formatted[:delivery_date] = order[:serving_datetime].to_date
    # for local DB
    # start_time = order[:serving_datetime].in_time_zone("Singapore")
    # end_time = order[:serving_datetime].in_time_zone("Singapore") + 30.minutes
    start_time = order[:serving_datetime]
    end_time = order[:serving_datetime] + 30.minutes
    order_formatted[:delivery_time] = "#{start_time.to_s(:time)}-#{end_time.to_s(:time)}"

    item_array = []
    order.order_items.each do |item|
      item_formatted = {}
      item_formatted[:name] = item[:name]
      item_formatted[:quantity] = item[:quantity]
      item_formatted[:total_price] = item[:unit_price] * item[:quantity]
      item_array.push(item_formatted)
    end
    order_formatted[:order_items] = item_array

    formatted_json = {}
    formatted_json[:order] = order_formatted
    render json: formatted_json
  end
end
