module Overminder
  module Helper
    def with_procfile
      if File.exist?("Procfile.dev")
        yield
      else
        abort "rake aborted!\nMissing `Procfile.dev`."
      end
    end
  end
end
