class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :attraction_id
end
