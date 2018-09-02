module Findable

  def find_by_name(name)
    self.all.find do |item|
      item.name == name
    end
  end

end
