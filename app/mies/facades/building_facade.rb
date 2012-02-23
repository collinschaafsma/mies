require 'facades/application_facade'

module Mies
  module Facades
    class BuildingFacade < Facades::ApplicationFacade

      def initialize
        @object = Building
      end

      def build(options = {})
        @object.create!(options)
      end

      def remodel(id, options = {})
        building = find(id)
        building.update_attributes(options)
      end

      def demolish(id)
        building = (id)
        building.destroy
      end

      def find(id)
        @object.find(id)
      end

      def all
        @object.all
      end

      def new_building
        @object.new
      end

    end
  end
end
