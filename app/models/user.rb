class User < ApplicationRecord
  def self.find_or_crete_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:nickname]
    image_url = auth_hash[:image_url]
    email = auth_hash[:email]

    User.find_or_crete_by(provider: provider, uid: uid) do |user|
      user.nickname = nickname
      user.image_url = image_url
      user.email = email
    end
  end
end
