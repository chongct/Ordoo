Types::OrderItemType = GraphQL::ObjectType.define do
  name 'OrderItem'

  field :id, !types.ID
  field :item_id, !types.String
  field :name, !types.String
  field :quantity, !types.Int
  field :unit_price, !types.Int
  field :delivery_order_id, !types.ID
  field :meal_id, !types.ID

end
