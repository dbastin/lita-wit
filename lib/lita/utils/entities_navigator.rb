module Lita
  module Utils
    class EntitiesNavigator
      def self.first_value(entities, entity)
        return nil unless entities.key? entity
        val = entities[entity][0]['value']
        return nil if val.nil?
        val.is_a?(Hash) ? val['value'] : val
      end
    end
  end
end
