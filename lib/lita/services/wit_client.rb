module Lita
  module Services
    class WitClient

      def initialize(robot)
        @robot = robot
        @token = robot.config.handlers.wit.server_access_token
        @actions_class = robot.config.handlers.wit.actions_class
      end

      def run_actions(session_id, message, context={}, max_steps=DEFAULT_MAX_STEPS)
        actions = @actions_class.new(@robot).actions(message.source)
        @wit = ::Wit.new(@token, actions)
        stripped = Utils::AliasStripper.strip(@robot, message)
        @wit.run_actions(session_id, stripped.body, context, max_steps)
      end
    end
  end
end