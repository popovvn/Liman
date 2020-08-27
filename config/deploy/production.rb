server '45.87.0.111', user: 'root', roles: %w{app db web}

set :application, "liman"
set :deploy_to, -> { "/srv/#{fetch(:application)}" }
set :rails_env, "production"
set :rvm_custom_path, '/usr/local/rvm'
set :linked_files, %w{db/production.sqlite3}
