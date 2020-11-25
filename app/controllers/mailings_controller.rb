class MailingsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create
    @mailing = Mailing.new(mailing_params)
    @mailing.user_id = current_user.id
    if @mailing.save
      redirect_to @mailing
    else
      render action: 'new'
      #render @mailing.errors.full_messages
    end
  end

  private

  def mailing_params
    params.require(:mailing).permit(:track_number)
  end
end
