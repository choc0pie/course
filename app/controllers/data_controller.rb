class DataController < ApplicationController
	before_filter :authenticate_user!
	def add
		@user = current_user
		@offer = @user.offers.new
	end

	def myoffers 
		@BiD=[]
		Offer.where(user_id: current_user.id).each do |f|
			@BiD.push(f)
		end
	end

	def index
		@user = current_user
		@offer = @user.offers.new

	end

	def show
		@user = current_user
		@offer = @user.offers.new

	end
	
	def create 
		#занесение нарушения в БД offers
		@user = current_user
		@offer = @user.offers.new
		@offer.obcode = params[:offer][:obcode]
		@offer.reason = params[:offer][:reason]
		@offer.adress = params[:offer][:adress]
		@offer.offertype = params[:offer][:offertype]
		@torg = Organisation.find_or_create_by(name: params[:offer][:org])
		@offer.organisation_id = @torg.id
		@offer.offerstat = params[:offer][:offerstat]
		@offer.kolpredp = params[:offer][:kolpredp]
		@offer.kolpredupr = params[:offer][:kolpredupr]
		@offer.kolshtraf = params[:offer][:kolshtraf]
		@offer.summshtraf = params[:offer][:summshtraf]
		@tto = Otdel.find_or_create_by(name: params[:offer][:to])
		@offer.otdel_id = @tto.id
		@offer.save
		# respond_to do |format|
  # if @offer.save
  #   format.js { render :js=>'alert("Заявка добавлена");' }
  # else
  #   format.js { render :js=>'alert("Заполните все поля");' }
  # end
# end  

	end

	def edit
		@offer = Offer.find(params[:f])

	end


	def savechanges
		@user = current_user
		@offer = Offer.find(params[:offer][:id])
		@offer.update_attribute(:obcode,params[:offer][:obcode])
		@offer.update_attribute(:reason,params[:offer][:reason])
		@offer.update_attribute(:adress,params[:offer][:adress])
		@offer.update_attribute(:offertype,params[:offer][:offertype])
		@offer.update_attribute(:offerstat,params[:offer][:offerstat])
		@offer.update_attribute(:kolpredp,params[:offer][:kolpredp])
		@offer.update_attribute(:kolpredupr,params[:offer][:kolpredupr])
		@offer.update_attribute(:kolshtraf,params[:offer][:kolshtraf])
		@offer.update_attribute(:summshtraf,params[:offer][:summshtraf])
		@offer.save
		redirect_to "/data/myoffers"
	end
	

end
