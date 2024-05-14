module MatCalendar
  class Lesson
    attr_accessor :name
    attr_reader :instructors

    def initialize(name)
      @name = name
      @instructors = []
    end
  end
end
