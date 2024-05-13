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
    #       lesson: {name: "Lesson: 1"},
    #       instructor: @instructor,
    #       time: Time.now.utc
    #     },
    #     {
    #       lesson: {name: "Lesson: 2"},
    #       instructor: @instructor,
    #       time: Time.now.utc
    #     }
    #   ]
    # } 
    # TODO lessons grouped by day
    def schedule
      {lessons: annotate_lessons}
    end

    private

    # TODO create a schedule object that returns lessons as scheduled_lessons 
    #      (aka classes)
    # TODO where do I get the time data from?
    # it "#schedule defaults to the current month"
    # it "#schedule includes the dates of the lessons"
    def annotate_lessons
      @lessons.map do |lesson|
        {
          lesson: lesson,
          instructor: self,
        }
      end
    end
  end
end
