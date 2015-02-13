class PagesController < ApplicationController
  def index
    
    # Render a template which are files relative to the app/views directory
    # The following line will look for a file called 'app/views/pages/index.html.erb'
    # Notice the following:
    # - Optional use of () for the render function
    #    > alternate call: render(template: "pages/index")
    # - No .html.erb suffix when calling the name of the file
    
    render template: "pages/index"
    #render(:template => "pages/index")
    #gawa ka ng "pages" folder sa views para doon siya pupunta tapos save them as .html.erb
  end 

  def about
    render template: "pages/about"
  end

  def contact
    render template: "pages/contact"
  end

  def marketplace
    render template: "pages/marketplace"
  end
  
end
