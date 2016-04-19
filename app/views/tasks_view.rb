class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(all)
    all.each_with_index do |task, index|
      if task
        puts "#{index + 1} #{task.name}" 
      end
    end
	end

  def create(task)
    puts "You are creating a #{task.name}."
  end

  def delete(task)
    puts "Your delete this #{task.name}."

  end

  def complete(task)
    puts "You now complete this #{task.name}."
  end

	def error
	end
end
