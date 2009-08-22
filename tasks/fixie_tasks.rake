namespace :db do
  namespace :test do
    desc 'Causes db:test:prepare to also run a factory creation file'
    task :prepare do
      RAILS_ENV = 'test'
      Dir[File.join(RAILS_ROOT, 'test', 'fixie', '*.rb')].sort.each { |fixture| load fixture }
    end
  end
end
