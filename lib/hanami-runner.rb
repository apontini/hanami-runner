require "hanami/cli/commands"

module Hanami
  class CLI
    Commands.module_eval do
      class Run < Hanami::CLI::Command
        desc "Executes ruby code in a Hanami environment"
        argument :code, required: true, desc: "The code to be executed"

        def call(code:)
          require_relative Pathname.pwd.join("config/environment")
          Hanami.boot
          eval(code)
        end
      end
    end

    register "run", Run
  end
end