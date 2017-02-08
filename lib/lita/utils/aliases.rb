module Lita
  module Utils
    class Aliases
      def self.values(robot)
        [robot.mention_name, robot.alias].map { |a| a unless a == '' }.compact
      end
    end
  end
end
