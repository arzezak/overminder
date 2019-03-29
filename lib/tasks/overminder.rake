namespace :overminder do
  include Overminder::Helper

  desc "Start Procfile processes with Overmind"
  task :start do
    with_procfile do
      sh "overmind start -f Procfile.dev"
    end
  end

  desc "Connect to web process"
  task :connect do
    with_procfile do
      sh "overmind connect web"
    end
  end
end
