class Mutations::CreatePost<Mutations::BaseMutation
    argument :title, String, required: true
    argument :body, String, required: true
    # argument :user_id, Int, required: true
    argument :userId, ID, required: false
    field :post, Types::PostType, null: false
    field :errors, [String], null: false
    def resolve(title:, body:, userId:nil)
        puts title
        puts body
      post = Post.new(title: title, body:body,user_id: userId)
      if post.save
        {
          post: post,
          errors: []
        }
      else
        {
          post: nil,
          errors: post.errors.full_messages
        }
      end
    end
  end
  
  