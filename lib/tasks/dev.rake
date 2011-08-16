namespace :dev do
  desc "Rebuild system"
  task :build => ['tmp:clear', 'log:clear', 'db:drop', 'db:create', 'db:migrate']
  task :build2 => ['dev:build', 'db:seed']
end
