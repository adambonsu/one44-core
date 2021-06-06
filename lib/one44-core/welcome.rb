# frozen_string_literal: true

module One44
  class Welcome
    def initialize(output)
      @output = output
    end

    def message(text)
      @output.puts text
    end
  end
end
