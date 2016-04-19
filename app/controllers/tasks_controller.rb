class TasksController
  def initialize(args)
    @args=args
    
    @view = TasksView.new
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    all_task = Task.all
    @view.index(all_task)
  end

  def add(name)  
    create_taks = Task.create(name: name)
    @view.create(create_taks)
  
  end

  def delete(name)
    task = Task.find_by(name: name)
    task.destroy
    @view.delete(task)
  end

  def complete(id)
    task = Task.find(id)
    if task.status == false
       task.update(status: true)
    end
    @view.complete(task)
  end

  

  def ejecutar
    case @args[0]
    when "index"  
      index
    when "add"  
      add(@args[1])
    when "delete"
      delete(@args[1])
    when "complete"
      complete(@args[1].to_i)
    end
  end
end

