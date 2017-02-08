# frozen_string_literal: true
module Lita
  module Utils
    class ContextPiper
      def self.pipe(context, entities, input, output)
        e = EntitiesNavigator.first_value(entities, input)
        context[output] = e unless e.nil?
      end
    end
  end
end
