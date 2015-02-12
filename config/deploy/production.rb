# ConfigsLoader.load_configs  :production, :locum
#
# set :use_sudo,              false
# set :rails_env,             'production'
# set :application,           ENV['LOCUM_APPLICATION']
# set :deploy_to,             -> { "/home/#{ENV['LOCUM_USER']}/projects/#{ENV['LOCUM_APPLICATION']}" }
#
# set :unicorn_pid,           -> { "/var/run/unicorn/#{ENV['LOCUM_APPLICATION']}.#{ENV['LOCUM_LOGIN']}.pid" }
# set :unicorn_conf,          -> { "#{current_path}/config/unicorn.rb" }
# set :unicorn_args,          ''
# set :unicorn_reset_mode,    :hard
#
# set :rvm_ruby_version,      '2.1.2'
# set :rvm_prefix,            -> { "rvm use #{fetch(:rvm_ruby_version)} do" }
# set :bundle_cmd,            -> { "#{fetch(:rvm_prefix)} bundle" }
# set :bundle_path,           -> { shared_path.join('gems') }
# set :bundle_without,        [:development, :test]
# set :rake,                  -> { "#{fetch(:bundle_cmd)} exec rake" }
#
# set :scm,                   :git
# set :repo_url,              'git@github.com:pneumo-guns/activity-market.git'
# set :branch,                'master'
# set :deploy_via,            :remote_cache
#
# role :app,                  ENV['LOCUM_SERVER'], primary: true
# role :web,                  ENV['LOCUM_SERVER']
# role :db,                   ENV['LOCUM_SERVER']
#
# server ENV['LOCUM_SERVER'], user:                ENV['LOCUM_USER'],
#                             login:               ENV['LOCUM_LOGIN'],
#                             roles:               %w{app web},
#                             ssh_options: {
#                               user:              ENV['LOCUM_USER'],
#                               forward_agent:     true,
#                               auth_methods:      %w{password},
#                               password:          ENV['LOCUM_PASSWORD']
#                             },
#                             default_run_options: {pty: true}
#
# namespace :deploy do
#   before :compile_assets,   :create_yml_symlinks
#   after  :finishing,        :update_current_symlink
#   before :migrate,          :db_dump
#   after  :migrate,          :db_seed
#   after  :finishing,        :restart
#   after  :finishing,        :cleanup
#   after  :start,            :start_delayed_job
#   after  :stop,             :stop_delayed_job
#   after  :restart,          :restart_delayed_job
# end
