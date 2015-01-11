require 'test_helper'

class HeroCrudTest < MiniTest::Spec
  describe "Create" do
    it "persists valid" do
      hero = Hero::Create[hero:
        { name: "Alys Rayne",
          archetype: "Warrior"
        }
      ].model

      hero.persisted?.must_equal true
      hero.name.must_equal "Alys Rayne"
      hero.archetype.must_equal "Warrior"
    end

    it "invalid" do
      result, operation = Hero::Create.run(hero:
        {name: "Alys Rayne"}
      )

      result.must_equal false
      operation.model.persisted?.must_equal false
      operation.contract.errors.to_s.must_equal "{:archetype=>[\"can't be blank\"]}"
    end
  end
end
