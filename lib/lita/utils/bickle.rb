# frozen_string_literal: true
module Lita
  module Utils
    class Bickle
      def initialize(robot)
        @robot = robot
      end

      def you_talking_to_me?(message)
        message.command? || message.body =~ /#{Aliases.values(@robot).join('|')}/i
      end
    end
  end
end
