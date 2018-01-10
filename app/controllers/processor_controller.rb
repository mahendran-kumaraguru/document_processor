class ProcessorController < ApplicationController
  require "base64"
  skip_before_action :verify_authenticity_token
  def capitalize
  	decoded_xml = Base64.decode64(params[:data])
  	to_send = Base64.encode64(decoded_xml.upcase)
  	respond_to do |format| 
  		format.html
    	format.json { render :xml =>  to_send}
  	end
  end
end
