module SignIn
  def sign_in_as(provider, user)
    OmniAuth.config.mock_auth[:provider] = {
      provider: provider,
      uid: user.id,
      nickname: user.nickname,
      image_url: user.image_url
    }
  end
end
