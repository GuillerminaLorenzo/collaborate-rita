require 'task_formatter'
require 'task'

RSpec.describe "Task formatter intergration" do
  it "initializes with a task" do
    expect(TaskFormatter.new(Task.new("Do laundry"))).to be
  end

  it "formats complete tasks" do
    task = Task.new("Do laundry")
    task_formatter = TaskFormatter.new(task)
    task.mark_complete
    expect(task_formatter.format).to eq "- [x] Do laundry"
  end

  it "formats incomplete tasks" do
    task = Task.new("Do laundry")
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "- [ ] Do laundry"
  end

end