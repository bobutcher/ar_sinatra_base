require_relative "test_helper"

class ListTest < Minitest::Test
  include Rack::Test::Methods

  def test_tasks_class_exists
    assert_equal List.class, Class
  end

  def test_able_to_create_new_task
    task_one = List.create(name: "Homework", completed_at: Time.now)
    assert_equal "Homework", task_one.name
    assert_in_delta Time.now.to_i, task_one.completed_at.to_i, 1
  end
end
