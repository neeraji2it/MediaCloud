role :app, %w{shivraj@23.227.172.79}
role :web, %w{shivraj@23.227.172.79}
role :db,  %w{shivraj@23.227.172.79}
server '23.227.172.79', user: 'shivraj', roles: %w{web app db} #, my_property: :my_value

set :domain, '23.227.172.79'
set :deploy_to, '/var/www/touchsecurecrafts.com/public_html'
set :branch, 'master'
set :deploy_user, 'shivraj'
set :log_level, :debug
set :rails_env, 'production'
