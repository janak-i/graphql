# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :password, String
    field :posts,[Types::PostType],null: true
    # field :posts, [Types::PostType],null: true
    # field :posts_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :name, Types::StringType
    # field :email, Types::StringType
    # field :password, Types::StringType
    field :posts_count, Integer, null: true


    def posts_count
      object.posts.size
    end

  end
end
