Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # todo: Remove me
  # field :testField, types.String do
  #   description "An example field added by the generator"
  #   resolve ->(obj, args, ctx) {
  #     "Hello World!"
  #   }
  # end

  field :createFeedback, function: Resolvers::CreateFeedback.new
end
