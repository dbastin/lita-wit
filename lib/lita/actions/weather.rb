module Lita
  module Actions
    class Weather < Base

      def actions(source)
        super.merge({
          :say => -> (session_id, context, msg) {
            @robot.send_message(source, msg)
          },
          :merge => -> (session_id, context, entities, msg) {
            Utils::ContextPiper.pipe(context, entities, 'intent', 'intent')
            Utils::ContextPiper.pipe(context, entities, 'location', 'loc')
            context
          }
        })
      end
    end
  end
end