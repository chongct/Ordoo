Types::DeliveryOrderType = GraphQL::ObjectType.define do
  name 'DeliveryOrder'

  field :id, !types.ID
  field :order_id, !types.String
  field :serving_datetime, !Types::DateTimeType
  field :order_items do
    type Types::OrderItemType
    resolve -> (delivery_order, args, ctx) {
      delivery_order.order_items.limit(1)
    }
  end
end
