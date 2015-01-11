class Hero < ActiveRecord::Base
  class Create < Trailblazer::Operation
    def process(params)
      Hero.create(params[:hero])
    end
  end
end
