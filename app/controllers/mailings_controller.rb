class MailingsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  private

  def mailing_params
    params.require(:mailing).permit(:track_number)
  end
end
