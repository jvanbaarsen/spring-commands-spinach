module Spring
  module Commands
    class Spinach
      def env(*)
        "test"
      end

      def exec_name
        "rspec"
      end
    end

    Spring.register_command "spinach", Spinach.new
    Spring::Commands::Rake.environment_matchers[/^spinach($|:)/] = "test"
  end
end
