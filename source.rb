class Source
  attr_accessor :name, :items
  attr_reader :id

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    item.source = self
    @items << item unless @items.include?(item)
  end
end
