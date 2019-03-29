module Overminder
  module Helper
    def with_procfile
      abort("rake aborted!\nMissing `overmind` executable.") unless overmind_present?

      if File.exist?("Procfile.dev")
        yield
      else
        abort("rake aborted!\nMissing `Procfile.dev`.")
      end
    end

    def overmind_present?
      File.exist?(`which overmind`.strip)
    end
  end
end
