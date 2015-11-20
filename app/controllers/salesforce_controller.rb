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
    @area = Area.new
  end

  def create_area
    @area = Area.new(params[:area])
 
    if @area.save
      redirect_to @area
    else
      render 'new_area'
    end
  end

  def booths
    @booths = Booth.all()
  end
  
  # private
  # def area_params
  #   params.require(:area).permit(:name, :location__c)
  # end
end
