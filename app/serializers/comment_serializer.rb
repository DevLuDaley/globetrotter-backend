class CommentSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  # < ActiveModel::Serializer
  attributes :id, :content, :user_id, :attraction_id
end
