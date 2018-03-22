Types::AllFeedbackType = GraphQL::ObjectType.define do
  name 'AllFeedback'

  field :payload, types[!FeedbackType]
end
