module MatCalendar
  class Lesson
    attr_accessor :name, :instructors, :course

    def initialize(name:, course: nil, instructors: [], time: nil)
      @name = name
      @instructors = instructors 
      @course = course
    end
  end
end
