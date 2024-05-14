require "test_helper"

module MatCalendar
  describe Lesson do
    before do
      @instructor = Instructor.new("Alice Appleton")
      @lesson = Lesson.new(
        name: "Lesson 1",
        course: "Course 1",
      )
    end

    it "has a name" do
      expect(@lesson.name).must_equal("Lesson 1")
    end

    it "can have instructors" do
      expect(@lesson.instructors).must_be_empty
    end

    it "can be assigned instructors" do
      new_instructor = Instructor.new("Bob Billmore")
      @lesson.instructors << new_instructor
      expect(@lesson.instructors).must_include(new_instructor)
    end

    it "belongs to a course" do
      expect(@lesson.course).must_equal("Course 1")
    end
  end
end
