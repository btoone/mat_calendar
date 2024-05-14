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
    # TODO bi-directional linking
    def schedule
      {lessons: @lessons}
    end

    def to_json(*_args)
      {
        name: @name
      }.to_json
    end
  end
end
