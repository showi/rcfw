# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rcfw_session',
  :secret      => '591789d66502d2d0ef8b3af0f71fe87cc380a3f4b8d261627ca4b0c1ee22ecccc9a96a70aa3859ff4ea08017d3899e0faa582946f5d1f46fe49c70f86ff7c57f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
