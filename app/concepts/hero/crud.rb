class Hero < ActiveRecord::Base
  class Create < Trailblazer::Operation
    attr_reader :model

    contract do
      property :name
      property :archetype
      property :speed
      property :health
      property :stamina
      property :defense
      property :might
      property :knowledge
      property :willpower
      property :awareness
      property :hero_ability
      property :heroic_feat

      validates :name, presence: true
      validates :archetype, presence: true
    end

    def process(params)
      @model = Hero.new

      validate(params[:hero], @model) do |form|
        form.save
      end
    end
  end
end
