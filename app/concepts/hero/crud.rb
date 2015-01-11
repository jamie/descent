class Hero < ActiveRecord::Base
  class Create < Trailblazer::Operation
    attr_reader :model

    contract do
      property :name, validates: {presence: true}
      property :archetype, validates: {presence: true}
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
    end

    def process(params)
      @model = Hero.new

      validate(params[:hero], @model) do |f|
        f.save
      end
    end
  end
end
