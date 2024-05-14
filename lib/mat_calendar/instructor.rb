require "json"

module MatCalendar
  class Instructor
    attr_accessor :lessons
    attr_reader :name

    def initialize(name)
      @name = name
      @lessons = []
    end

    # schedule = {
    #   lessons: [
    #     {
    #       name: {name: "Lesson: 1"},
    #       instructors: [@instructor],
    #       time: Time.now.utc
    #     },
    #     {
    #       name: {name: "Lesson: 2"},
    #       instructors: [@instructor],
    #       time: Time.now.utc
    #     }
    #   ]
    # } 
    # TODO lessons grouped by day
    # TODO defaults to the current month
    def schedule
      {lessons: @lessons}
    end

  end
end
