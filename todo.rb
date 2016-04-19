require_relative 'config/application'

controller = TasksController.new(ARGV)
controller.ejecutar