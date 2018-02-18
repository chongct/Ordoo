Types::FeedbackType = GraphQL::ObjectType.define do
  name 'Feedback'

  field :ratable_id, !types.Int
  field :ratable_type, !types.String
  field :rating, !types.Int
  field :comment, !types.String
end
