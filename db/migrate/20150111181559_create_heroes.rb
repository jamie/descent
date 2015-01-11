class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string  :name
      t.string  :archetype
      t.integer :speed
      t.integer :health
      t.integer :stamina
      t.string  :defense
      t.integer :might
      t.integer :knowledge
      t.integer :willpower
      t.integer :awareness
      t.text    :hero_ability
      t.text    :heroic_feat

      t.timestamps null: false
    end
  end
end
