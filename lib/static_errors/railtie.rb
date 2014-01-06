require 'static_errors'
require 'rails'

module StaticErrors
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'static_errors/tasks/static_errors.rb'
    end
  end
end
