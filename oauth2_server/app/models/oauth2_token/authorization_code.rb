class Oauth2Token::AuthorizationCode < Oauth2Token
  def access_token
    @access_token ||= expire! && user.access_tokens.create!(client: client)
  end
end
