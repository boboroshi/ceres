# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_demeter_session',
  :secret      => '1317cd0411dd80016d98f5a4a68a7adfed3f5272ba70af23669ddfc9e018cf5917e8f470b9cd848ef541bc27de88d67c62efe52a8f941b048106c3ec7a7e9688'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
