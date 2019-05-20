require "hanami/cli"
require "hanami"

module Coms
  class CLI
    def call(*args)
      Hanami::CLI.new(Commands).call(*args)
    end

    module Commands
      extend Hanami::CLI::Registry

      class Run < Hanami::CLI::Command
        argument :code, required: true, desc: "The code to be executed"

        def call(code:)
          require_relative Pathname.pwd.join("config/environment")
          Hanami.boot
          eval(code)
        end
      end
    end
  end
end

Coms::CLI::Commands.register "run", Coms::CLI::Commands::Run