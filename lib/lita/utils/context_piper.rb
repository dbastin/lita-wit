module Lita
  module Utils
    class ContextPiper
      def self.pipe(context, entities, input, output)
        e = Lita::Utils::EntitiesNavigator.first_value(entities, input)
        context[output] = e unless e.nil?
      end
    end
  end
end