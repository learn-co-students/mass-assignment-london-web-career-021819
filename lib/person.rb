class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  @@people = []

  def initialize(attributes)
    attributes.each {|attribute, value| self.send("#{attribute}=", value)}
    self.class.all << self
  end

  def self.all
    @@people
  end
end
