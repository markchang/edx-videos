class Course
  attr_accessor :name, :id

  def self.all
    [
      self.new(name: "6.002x Circuits and Electronics", id: "6.002x"),
      self.new(name: "CS169.1x Software as a Service", id: "CS169.1x")
    ]
  end

  def initialize(args={})
    args.each do |k,v|
      send("#{k}=", v) if respond_to?("#{k}=")
    end
  end

end