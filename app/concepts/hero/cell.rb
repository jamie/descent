class Hero::Cell < Cell::ViewModel
  def show
    render
  end

private
  # properties :name, :archetype
  def name
    model.name
  end

  def archetype
    model.archetype
  end

  def name_link
    link_to model.name, hero_path(model)
  end
end
