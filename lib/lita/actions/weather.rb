# frozen_string_literal: true
module Lita
  module Actions
    class Weather < Base
      def actions(source)
        super.merge(send: lambda do |_context, msg|
                            @robot.send_message(source, msg['text'])
                          end,
                    merge: lambda do |r|
                             Utils::ContextPiper.pipe(r['context'], r['entities'], 'intent', 'intent')
                             Utils::ContextPiper.pipe(r['context'], r['entities'], 'location', 'loc')
                             r['context']
                           end)
      end
    end
  end
end
