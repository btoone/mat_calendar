# frozen_string_literal: true

require "test_helper"

# class TestMatCalendar < Minitest::Test
#   def test_that_it_has_a_version_number
#     refute_nil ::MatCalendar::VERSION
#   end

#   def test_it_does_something_useful
#     assert false
#   end
# end

module MatCalendar
  # TODO: Decide if you want to create a Schedule entity or not
  # - something.schedule => a JSON formatted schedule for the month
  # - instructor.schedule
  # - course.schedule = course schedule for the entire course for a month
  describe "Schedule" do
    it "#schedule returns a JSON formated schedule" do
      skip
      schedule = Schedule.new
      expected = JSON.parse(schedule.schedule)
      expect(expected).must_equal({})
    end
  end
end
