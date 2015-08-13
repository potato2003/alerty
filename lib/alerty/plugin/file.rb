class Alerty
  class Plugin
    class File
      def initialize(config)
        raise ConfigError.new('file: path is not configured') unless config.path
        @path = config.path
      end

      def alert(msg)
        ::File.open(@path, 'a') do |io|
          io.puts msg
        end
      end
    end
  end
end
