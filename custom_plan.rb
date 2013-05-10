require 'zeus/rails'

class CustomPlan < Zeus::Rails
  def boot
  end

  def prerake
    require 'rake'
  end

  def rake
    Rake.application.run
  end

  def default_env
    require_relative './something'
  end

  def foo
    Something.foo
  end

end

Zeus.plan = CustomPlan.new
