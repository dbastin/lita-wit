module Lita
  module Utils
    class AliasStripper
      def self.strip(robot, message)
        body = message.body.sub(/#{Aliases.values(robot).join('|')}/i, '').strip
        Message.new(robot, body, message.source)
      end
    end
  end
end