class InvitationsController < ApplicationController

  def new
  	  if logged_in?
		@event=Event.find(params[:event_id])
	    
		@invitation = Invitation.new
		
	  end
  end
  
  def create
	@event=Event.find(params[:event_id])
	#@invitation=@event.guests.build(params[:invitation])
	
	
    @event.guests.create(event_id: params[:event_id],user_id: params[:invitation][:user_id])
    flash[:success]="Ingredient added"
    redirect_to request.referrer


  end

end