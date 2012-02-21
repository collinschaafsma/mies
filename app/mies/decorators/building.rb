require 'decorators/base'

module Mies
  module Decorators
    class Building < Decorators::Base
      # These methods don't know anything about the object
      # their decorating. They could decorate any object.
      def tall?(type)
        type.to_s.gsub(/ /,'').to_sym == :skyscrapper
      end
    end
  end
end
