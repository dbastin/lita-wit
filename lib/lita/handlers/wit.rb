module Lita
  module Handlers
    class Wit < Handler
      on :unhandled_message, :chat

      def chat(payload)
        message = payload[:message]
        robot.send_message(message.source, 'Hi')
      end

      Lita.register_handler(self)
    end
  end
end
