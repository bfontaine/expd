module Expd
  class Expander
    def initialize(snippets)
      @snippets = snippets
    end

    def expand(name, opts = {})
      exp = @snippets.fetch(name, "")
      copy_to_clipboard exp if opts[:copy] && !exp.empty?
      exp
    end

    private

    def copy_to_clipboard(text)
      IO.popen(expand_cmd, "w") { |p| p.write text } unless exp.empty?
    end

    def clipboard_cmd
      @expand_cmd ||=
        case RUBY_PLATFORM
        when /darwin/
          "pbcopy"
        # I dunno what to use on Windows
        else
          "xclip -i"
        end
    end
  end
end
