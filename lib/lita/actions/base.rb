# frozen_string_literal: true
module Lita
  module Actions
    class Base
      def initialize(robot)
        @robot = robot
      end

      def actions(_source)
        {
          error: lambda do |session_id, context, error|
            # Required, but is never ever called
          end
        }
      end
    end
  end
end
