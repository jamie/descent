require 'test_helper'

class HeroesControllerTest < ActionController::TestCase
  test "GET /heroes [empty]" do
    # TODO: Find a better way to ensure empty test db
    Hero.destroy_all

    get :index

    response.body.must_match /No Heroes/
  end

  test "GET /heroes [nonempty]" do
    Hero::Create[hero:
      { name: "Alys Rayne",
        archetype: "Warrior"
      }
    ]

    get :index

    response.body.must_match /Alys Rayne/
  end
end
