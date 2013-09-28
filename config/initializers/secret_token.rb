# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end


# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SampleApp::Application.config.secret_key_base = '3ce3890d5c60bec6294cedb8cf4308312522a8f5dc5b577e71e25759179f31cc11f9bcc5e66089cf923396fb074b8836fabb9ff8b7542fb4df177f0e8e5b415b'
