module Overminder
  class Railtie < Rails::Railtie
    rake_tasks do
      load "tasks/overminder.rake"
    end
  end
end
