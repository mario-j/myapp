class ApplicationController < ActionController::Base

  def index
    render "/Home/Index.html.erb"
  end

  def about
    render "/About.html.erb"
  end

  def contact
    render "/Contact.html.erb"
  end

  def eightball
    render "/EightBall.html.erb"
  end

end
