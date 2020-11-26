class MailingsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create
    @mailing = Mailing.new#(mailing_params)
    @mailing.user_id = current_user.id

    @departure_point = '344000'
    @place_of_arrival = '347935'

    create_track

    @mailing.track_number = @new_track_number

    if @mailing.save
      redirect_to @mailing
    else
      render action: 'new'
      #render @mailing.errors.full_messages
    end
  end

  def create_track
    t = Time.now
    data = t.strftime("%d%m%Y")

    nof = current_user.id.to_s

    @new_track_number = 'RR' + data + nof + @departure_point + @place_of_arrival
  end

  # private

  # def mailing_params
  #   params.require(:mailing).permit(:track_number)
  # end

end
