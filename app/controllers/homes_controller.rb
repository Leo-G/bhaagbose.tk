class HomesController < ApplicationController
  def index
  @home = Home.all   
  @home.each do |h|  
    send_data  h.image, :type => 'image/png',:disposition => 'inline'
  end
 end
end
