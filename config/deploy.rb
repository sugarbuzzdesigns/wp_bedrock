set :application, 'dev.sugarbuzzdesigns.com/'
set :repo_url, 'git@bitbucket.org:username/repo.git'
set :branch, :master
set :deploy_to, -> { "/home2/sugarbuz/public_html/#{fetch(:application)}" }
set :log_level, :debug
set :linked_files, %w{.env web/.htaccess}
set :linked_dirs, %w{web/app/uploads}
set :tmp_dir, "/home2/sugarbuz/capistrano_tmp"
 
SSHKit.config.command_map[:bash] = "/usr/bin/bash"
SSHKit.config.command_map[:composer] = "composer"
 
namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :service, :nginx, :reload
    end
  end
end