module Lita
  module Utils
    class Bickle

      def initialize(robot)
        @robot = robot
      end

      def you_talking_to_me?(message)
        message.command? || message.body =~ /#{aliases.join('|')}/i
      end

      private

      def aliases
        [@robot.mention_name, @robot.alias].map { |a| a unless a == '' }.compact
      end
    end
  end
end
