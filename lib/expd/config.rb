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

    def load_from_file!
      @conf = YAML.load_file @filename if File.exist?(@filename)
      @conf[:snippets] ||= {}
    end

    def save!
      File.open(@filename, "w") { |f| f.write YAML.dump(@conf) }
    end

    def snippets
      self[:snippets]
    end

    def self.defaults
      new File.expand_path("~/.expd_snippets")
    end
  end
end
