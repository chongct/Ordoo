Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # todo: remove me
  # field :testField, types.String do
  #   description "An example field added by the generator"
  #   resolve ->(obj, args, ctx) {
  #     "Hello World!"
  #   }
  # end

  field :delivery_order, !types[Types::DeliveryOrderType] do
    resolve -> (obj, args, ctx) { DeliveryOrder.all }
  end

  field :feedback, !types[Types::FeedbackType] do
    resolve -> (obj, args, ctx) { Feedback.all }
  end

  field :order_item, !types[Types::OrderItemType] do
    resolve -> (obj, args, ctx) { OrderItem.all }
  end

  # field :orderItem, !types[Types::OrderItemType] do
  #   argument :delivery_order_id, !types.Int
  #   resolve -> (obj, args, ctx) { OrderItem.where({delivery_order_id: args[:delivery_order_id]}) }
  # end
end
