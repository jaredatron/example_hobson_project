require 'logger'

module ExampleHobsonProject

  extend self

  def root
    @root ||= Pathname.new File.expand_path('../..', __FILE__)
  end

  def logger
    @logger ||= begin
      root.join('log').mkpath
      Logger.new(root.join('log/app.log'))
    end
  end

end

