require "forwardable"
require "yaml"

module Expd
  class Config
    extend Forwardable

    def_delegators :@conf, :[], :[]=, :delete, :fetch

    def initialize(filename)
      @filename = filename
      @conf = {}
      load_from_file!
    end

    # Load the configuration from its file if it exists. This already performed
    # on instance creation.
    def load_from_file!
      @conf = YAML.load_file @filename if File.exist?(@filename)
      @conf[:snippets] ||= {}
    end

    # Save the configuration on disk
    def save!
      File.open(@filename, "w") { |f| f.write YAML.dump(@conf) }
    end

    # Shortcut to get the snippets
    def snippets
      self[:snippets]
    end

    # Return a configuration loaded from the default config file
    def self.defaults
      new File.expand_path("~/.expd_snippets")
    end
  end
end
