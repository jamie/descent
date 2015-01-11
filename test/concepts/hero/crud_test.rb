require 'test_helper'

class HeroCrudTest < MiniTest::Spec
  describe "Create" do
    it "persists valid" do
      hero = Hero::Create[hero:
        {name: "Alys Rayne"}
      ]

      hero.persisted?.must_equal true
      hero.name.must_equal "Alys Rayne"
    end
  end
end
