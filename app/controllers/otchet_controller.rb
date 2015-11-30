class OtchetController < ApplicationController
	  def index
    @offer = Offer.all
    respond_to do |format|
      format.html
      format.csv { send_data @offer.to_csv }
      format.xls #{ send_data @offer.to_csv(col_sep: "\t") }
    end
  end
end
