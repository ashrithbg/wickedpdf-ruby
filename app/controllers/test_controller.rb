class TestController < ApplicationController
  def show
  	respond_to do |format|
	format.html  		
  	format.pdf do
    render :pdf    => "test.pdf",
      :disposition => "inline",
      :template    => "test/show.pdf.erb",
      :layout      => "pdf.html.erb"
  end 
 end
 end
end
