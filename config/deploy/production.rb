server '89.223.24.167', user: 'root', roles: %w{app db web}

set :application, "linp"
set :deploy_to, -> { "/srv/#{fetch(:application)}" }
set :rails_env, "production"
set :rvm_custom_path, '/usr/local/rvm'
