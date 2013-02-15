class Video
  attr_accessor :description, :url, :course_id

  def self.all
    [
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?v=jeo1R9LskHU", description: "MIT 6.002X Fall 2012 Course Intro"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?v=SEwQxPNUAno", description: "FALL 2012 INTRODUCTION BY PROF. AFRIDI"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?v=OEoXaMPEzfM", description: "EDX TUTORIAL: BASICS"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?v=7m8pab1MfYY", description: "EDX TUTORIAL: COURSEWARE NAVIGATION"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=pflzzK47wEo", description: "EDX TUTORIAL: TOP-LEVEL NAVIGATION"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=Q-rY8DIwYgg", description: "EDX TUTORIAL: DISCUSSION FORUMS"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=kB6-nallVQ4", description: "EDX TUTORIAL: WIKI"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=0iQkPm8rwDA", description: "EDX TUTORIAL: CIRCUIT SIMULATOR"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=eLGa_Wo6JxA", description: "EDX TUTORIAL: CIRCUIT SIMULATOR - DC ANALYSIS"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=X-68e0Ei7PI", description: "EDX TUTORIAL: CIRCUIT SIMULATOR - TRANSIENT ANALYSIS"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=QNg4OEvaq2E", description: "EDX TUTORIAL: CIRCUIT SIMULATOR - AC ANALYSIS"),
      self.new(course_id: "6.002x", url: "https://www.youtube.com/watch?feature=player_embedded&v=RQdyRhHDlRo", description: "EDX TUTORIAL: GOOD LUCK!"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=V36LpHqtcDY", description: "WELCOME TO CS169.1X!"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=rzcoumjV8mY", description: "L1V1: ENGINEERING SOFTWARE IS DIFFERENT FROM ENGINEERING HARDWARE!"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=BopHHHkPcL8", description: "L1V2: DEVELOPMENT PROCESSES: WATERFALL VS. AGILE"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=Fy8aOwSqLFk", description: "L1V3: ASSURANCE"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=JkWOCVNmsMA", description: "L1V4: PRODUCTIVITY"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=fBPJji7BQ-A", description: "L1V5: SOFTWARE AS A SERVICE"),
      self.new(course_id: "CS169.1x", url: "https://www.youtube.com/watch?feature=player_embedded&v=InZvW04HYGE", description: "L1V6: CONCLUSION")
    ]
  end

  def initialize(args={})
    args.each do |k,v|
      send("#{k}=", v) if respond_to?("#{k}=")
    end
  end

end