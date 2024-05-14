require "json"

module MatCalendar
  class Lesson
    attr_accessor :name, :instructors, :course

    def initialize(name:, course: nil, instructors: [], time: nil)
      @name = name
      @instructors = instructors 
      @course = course
    end

    # TODO enable JSON serialization
    # def to_json(*_args)
    #   {
    #     name: @name
    #   }.to_json
    # end
  end
end
