module Lita
  module Actions
    class Base
      def initialize(robot)
        @robot = robot
      end

      def actions(source)
        {
          :error => -> (session_id, context, error) {
            # Required, but is never ever called
          }
        }
      end
    end
  end
end