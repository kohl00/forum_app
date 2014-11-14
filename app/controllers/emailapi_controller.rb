class EmailapiController < ApplicationController

  def subscribe
  	 @list_id ='82eb02ca6e'
    gb = Gibbon::API.new

    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => params[:email][:address]}
      })
    redirect_to root_path
  end

  def index
  end

  private

  def send_email
  	current_user.subscribe
  end
end
