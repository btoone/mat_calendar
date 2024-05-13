require "test_helper"

module MatCalendar
  describe Instructor do
    before do
      @instructor = Instructor.new("Alice Appleton")
    end

    it "has a name" do
      expect(@instructor.name).must_equal "Alice Appleton"
    end

    describe "#schedule" do
      before do
        @lesson = Lesson.new(name: "Lesson 1")
      end

      it "converts to JSON format" do
        json = @instructor.schedule.to_json
        actual = JSON.parse(json) 
        expect(actual.keys).must_include("lessons")
      end

      it "#schedule includes the lessons" do
        @instructor.lessons << @lesson

        schedule = @instructor.schedule
        scheduled_lesson = schedule[:lessons].first
        expect(scheduled_lesson[:lesson]).must_equal(@lesson)
      end
    end
  end
end


