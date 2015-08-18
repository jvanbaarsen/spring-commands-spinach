module Spring
  module Commands
    class Spinach
      def env(*)
        ENV["SPINACH_ENV"] || "test"
      end

      def exec_name
        "spinach"
      end

    end

    Spring.register_command "spinach", Spinach.new
    Spring::Commands::Rake.environment_matchers[/^spinach($|:)/] = Spring::Commands::Spinach.new.env
  end
end
