# frozen_string_literal: true
module Lita
  module Actions
    class Weather < Base
      def actions(source)
        super.merge(say: lambda do |_session_id, _context, msg|
                           @robot.send_message(source, msg)
                         end,
                    merge: lambda do |_session_id, context, entities, _msg|
                             Utils::ContextPiper.pipe(context, entities, 'intent', 'intent')
                             Utils::ContextPiper.pipe(context, entities, 'location', 'loc')
                             context
                           end)
      end
    end
  end
end
