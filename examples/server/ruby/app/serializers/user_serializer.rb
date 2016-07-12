class UserSerializer < ActiveModel::Serializer
  self.root = false

  attributes :id, :displayName, :email, :picture

  def displayName
    object.display_name.presence || object.full_name
  end

  def picture
    object.image_url
  end
end
