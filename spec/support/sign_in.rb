module SignIn
  def sign_in_as(provider, user)
    OmniAuth.config.mock_auth[:provider] = {
      provider: provider,
      uid: user.uid,
      name: user.nickname,
      image: user.image_url,
      email: user.email
    }
  end
end
