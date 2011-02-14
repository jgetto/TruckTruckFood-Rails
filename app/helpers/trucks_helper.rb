module TrucksHelper

  def add_space(name)
    array = name.split('_')
    array.join(' ')
  end

end
