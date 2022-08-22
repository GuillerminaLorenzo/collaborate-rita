class TaskFormatter
    def initialize(task) 
        @task = task
    end
  
    def format
        if !@task.complete?
            return "- [ ] #{@task.title}"
        else
            return "- [x] #{@task.title}"
        end
    end
  end