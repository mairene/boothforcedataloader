class SalesforceController < ApplicationController

  def areas
    @areas = Area.all()
  end

  def area
    if params[:id] =~ /^\d+$/
        @area = Area.find(params[:id])
    else
        @area = Area.find_by_sfid(params[:id])
    end

    begin
      @booths = @area.booths
    rescue
      @booths = []
    end
  end

  def new_area
    
  end

  def create_area
    @area = Area.new(params[:article])

    @area.save
    redirect_to @area
  end

  def booths
    @booths = Booth.all()
  end

end
