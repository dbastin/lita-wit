module Lita
  module Services
    class WitClient

      def initialize(robot)
        @robot = robot
        token = @robot.config.handlers.wit.server_access_token
        @wit = ::Wit.new token, actions
      end

      def run_actions(session_id, message, context={}, max_steps=DEFAULT_MAX_STEPS)
        @source = message.source
        stripped = Lita::Utils::AliasStripper.strip(@robot, message)
        @wit.run_actions(session_id, stripped.body, context, max_steps)
      end

      private

      def actions
        {
          :say => -> (session_id, context, msg) {
            @robot.send_message(@source, msg)
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

      def first_entity_value(entities, entity)
        return nil unless entities.has_key? entity
        val = entities[entity][0]['value']
        return nil if val.nil?
        val.is_a?(Hash) ? val['value'] : val
      end

      def pipe(context, entities, input, output)
        e = first_entity_value entities, input
        context[output] = e unless e.nil?
      end
    end
  end
end