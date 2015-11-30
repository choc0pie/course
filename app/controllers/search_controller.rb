class SearchController < ApplicationController
	before_filter :authenticate_user!
	before_filter :can_search, only: [:index]

  def index
	@SDB=[]
	if params[:requesti]=="data" 
	date1 = DateTime.new(params[:start_date]["year"].to_i, params[:start_date]["month"].to_i, params[:start_date]["day"].to_i)
	date2 = DateTime.new(params[:end_date]["year"].to_i, params[:end_date]["month"].to_i, params[:end_date]["day"].to_i)
	Offer.where(created_at: [date1..date2]).each do |f|
		@SDB.push(f)
	end



	elsif params[:requesti]=="otdel"
			Offer.where(otdel_id: params[:to]).each do |f|
				@SDB.push(f)
			end


	elsif params[:requesti]=="org"
		Offer.where(organisation_id: params[:organisation_id]).each do |f|
			@SDB.push(f)
		end
	end

    respond_to do |format|
      format.html
      format.csv { send_data @SDB.to_csv }
      format.xls
    end
  end
    def can_search
    	@user= current_user
    if @user.access=="1"
      raise ActionController::RoutingError.new('Not Found')
    end
  end

end
