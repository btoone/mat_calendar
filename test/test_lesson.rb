require "test_helper"

module MatCalendar
  describe Lesson do
    before do
      @lesson = Lesson.new("Lesson 1")
    end

    it "has a name" do
      expect(@lesson.name).must_equal("Lesson 1")
    end
  end
end
