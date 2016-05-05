module Lita
  module Handlers
    class Wit < Handler
      on :unhandled_message, :handle
      config :server_access_token, type: String, required: true
      config :actions_class, type: Class, required: true

      def initialize(robot)
        super
        @bickle = Lita::Utils::Bickle.new(robot)
        @client = Lita::Services::WitClient.new(robot)
      end

      def handle(payload)
        message = payload[:message]
        return unless @bickle.you_talking_to_me?(message)
        respond(message)
      end

      private

      def respond(message)
        @client.run_actions session_id, message
      end

      def session_id
        'unique-1234'
      end

      Lita.register_handler(self)
    end
  end
end
