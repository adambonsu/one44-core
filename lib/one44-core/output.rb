# frozen_string_literal: true

module One44
  class Output
    def messages
      @messages ||= []
    end

    def print(message)
      messages << message
    end

    def puts(message)
      print(message)
      print('\n')
    end
  end
end
