class SalesforceController < ApplicationController

  def areas
    @page = (params[:page] || 1).to_i
    @areas = Area.order("name").offset(@page*20).limit(20).all()
  end

  def area
    if params[:id] =~ /^\d+$/
        @area = Area.find(params[:id])
    else
        @account = Area.find_by_sfid(params[:id])
    end

    begin
      @booths = @area.booths
    rescue
      @booths = []
    end
  end

  def booths
    @page = (params[:page] || 1).to_i
    @booths = Booth.order("name").offset(@page*20).limit(20).all()
  end

end
