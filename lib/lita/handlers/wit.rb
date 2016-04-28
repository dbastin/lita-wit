module Lita
  module Handlers
    class Wit < Handler
      on :unhandled_message, :chat

      def initialize(robot)
        super
        @bickle = Lita::Utils::Bickle.new(robot)
      end

      def chat(payload)
        message = payload[:message]
        return unless @bickle.you_talking_to_me?(message)
        robot.send_message(message.source, 'Hi')
      end

      Lita.register_handler(self)
    end
  end
end
