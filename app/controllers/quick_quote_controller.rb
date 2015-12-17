require_relative "../pdfs/quotepdf"
require_relative "../pdfs/fillableQuotePdf"
require_relative "../pdfs/TestPdfForm"
class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

   def show
    @invoice = Quote.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'quick_quote/show.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

  def new
    @quote=Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to @quote, notice: "Successfully added a quote"
    else
      render 'new'
    end

  end


  private

  def quote_params
    params.require(:quote).permit(:quote_number ,:company_name, :advisor_name, :quote_date)
  end
end
end
