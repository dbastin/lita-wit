module Lita
  module Actions
    class Weather < Base

      def actions(source)
        {
          :say => -> (session_id, context, msg) {
            @robot.send_message(source, msg)
          },
          :merge => -> (session_id, context, entities, msg) {
            pipe(context, entities, 'intent', 'intent')
            pipe(context, entities, 'location', 'loc')
            context
          },
          :error => -> (session_id, context, error) {
            # Required, but is never ever called
          },
        }
      end

      private

      # Pull this stuff out. Used a lot...
      def pipe(context, entities, input, output)
        e = Lita::Utils::EntitiesNavigator.first_value(entities, input)
        context[output] = e unless e.nil?
      end
    end
  end
end