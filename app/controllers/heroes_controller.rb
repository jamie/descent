class HeroesController < ApplicationController
  def index
    @heroes = Hero.all
    render
  end

  def new
    # TODO: Refactor to this?
    # form Hero::Create
    @hero = Hero.new
    render
  end

  # def create
  #   run Hero::Create
  # end
  #
  # def show
  #   present Hero::Show
  # end
  #
  # def edit
  #   present Hero::Update
  # end
  #
  # def update
  #   run Hero::Update
  # end
end
