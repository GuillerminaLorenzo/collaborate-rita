require "task_formatter"

describe TaskFormatter do
    it "initializes a task" do
        task_format = TaskFormatter.new(double :task)
        expect(task_format).to be
    end

    it "when the task is not completed" do
        task_format = TaskFormatter.new(double :task, complete?: false, title: "Walk the dog")
        expect(task_format.format).to eq "- [ ] Walk the dog" 
    end

    it "when the task is completed" do
        task_format = TaskFormatter.new(double :task, complete?: true, title: "Walk the dog")
        expect(task_format.format).to eq "- [x] Walk the dog" 
    end
end