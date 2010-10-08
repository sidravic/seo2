# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_seo2_session',
  :secret      => 'ab0b12780b00769ec5c440637cb234cba14de0780ea5c973272256ea51dc350292f9056f23fdaf82fbd878182e5321303eee21224b712b26f0c1eedca130a769'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
