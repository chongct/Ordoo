Types::DeliveryOrderType = GraphQL::ObjectType.define do
  name 'DeliveryOrder'

  field :id, !types.ID
  field :order_id, !types.String
  field :serving_datetime, !Types::DateTimeType
  field :order_items, -> { !types[Types::OrderItemType] }
end
