require "test_helper"

module MatCalendar
  describe Lesson do
    before do
      @lesson = Lesson.new("Lesson 1")
      @instructor = Instructor.new("Alice Appleton")
    end

    it "has a name" do
      expect(@lesson.name).must_equal("Lesson 1")
    end

    it "has at least one instructor" do
      @lesson.instructors << @instructor
      expect(@lesson.instructors).must_include(@instructor)
    end
  end
end
