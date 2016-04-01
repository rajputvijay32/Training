class SayController < ApplicationController
  def hello
    @time = Time.now
    @files = Dir.glob('*') #to find files in current directory
  end

  def goodbye
    @time = Time.now
  end

end
