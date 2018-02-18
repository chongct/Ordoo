class Resolvers::CreateFeedback < GraphQL::Function
  argument :ratable_id, !types.Int
  argument :ratable_type, !types.String
  argument :rating, !types.Int
  argument :comment, !types.String

  type Types::FeedbackType

  def call(_obj, args, _ctx)
    Feedback.create!(
      ratable_id: args[:ratable_id],
      ratable_type: args[:ratable_type],
      rating: args[:rating],
      comment: args[:comment]
    )
  end
end
