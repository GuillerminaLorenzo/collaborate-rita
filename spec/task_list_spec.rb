require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns all tasks" do
    task_1 = double :task_1
    task_2 = double :task_2
    task_list = TaskList.new
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "returns true if all tasks are complete" do
      task_1 = double :task_1, complete?: true
      task_2 = double :task_2, complete?: true
      task_list = TaskList.new
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq true
  end

  it "returns false if some tasks are complete" do
    task_1 = double :task_1, complete?: true
    task_2 = double :task_2, complete?: false
    task_list = TaskList.new
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end
  
end