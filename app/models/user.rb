class User < ApplicationRecord
  def self.find_or_crete_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    name = auth_hash[:info][:name]
    image = auth_hash[:info][:image]
    email = auth_hash[:info][:email]

    User.find_or_crete_by(provider: provider, uid: uid) do |user|
      user.nickname = name
      user.image_url = image
      user.email = email
    end
  end
end
