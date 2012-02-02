class AdminController < ApplicationController
  def index
    @registrants = Registrant.all
    @total_registrants = Registrant.count

  end
end
