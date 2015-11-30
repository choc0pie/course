class Offer < ActiveRecord::Base
	belongs_to :user

	def self.to_csv(options = {})
    	CSV.generate(options) do |csv|
      		csv << column_names
     		all.each do |offer|
       		 csv << offer.attributes.values_at(*column_names)
      		end
    	end
	end
	validates_presence_of :obcode
end
