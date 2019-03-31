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

  desc "Generate Procfile.dev"
  task :generate do
    contents = <<~FILE
      web: ./bin/rails server -b 0.0.0.0
      webpacker: ./bin/webpack-dev-server
    FILE

    File.write("Procfile.dev", contents)
  end
end
