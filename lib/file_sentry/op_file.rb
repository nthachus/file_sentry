class OPFile

  attr_accessor :filepath, :hash, :data_id

  def initialize(attributes)
    attributes.each {|attribute, value| self.send("#{attribute}=", value)}
  end

end