class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :thanks]

  def index
  	#@teams = Teams.order("created_at ASC")
  	#@sub_array = @teams.each_slice(2).to_a
  	#respond_to do |format|
  #		format.html
  #		format.json{render json: @teams}
 # 	end
  end


  def thanks
  end

end
