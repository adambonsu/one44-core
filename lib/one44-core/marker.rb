# frozen_string_literal: true

module One44
  class Marker
    def clean(question)
      question.gsub('x', '*')
    end

    def mark(question, answer)
      instance_eval(clean(question)) == answer ? 'CORRECT' : 'INCORRECT'
    end
  end
end
