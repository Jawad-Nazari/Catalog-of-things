class Author < Item
  attr_accessor :first_name, :last_name
  attr_reader :id, :items

  def initialize(first_name, last_name)
    super()
    @id = rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author << self
  end
end