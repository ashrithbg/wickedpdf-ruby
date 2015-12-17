class QuotePdf < Prawn::Document

  def initialize(quote, view)
  	puts "in quotepdfrb"
    super()
    text "This is a quote"
  end
end