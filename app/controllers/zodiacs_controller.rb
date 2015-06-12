class ZodiacsController < ApplicationController
  def destroy_row
    z = Zodiac.find(params[:the_id])
    z.destroy
    redirect_to('http://localhost:3000/zodiacs')
  end


  def index
    @list_of_zodiacs = Zodiac.all
  end

  def new_form

  end

  def sign
    @zodiac = Zodiac.find_by({:sign => params[:the_sign].capitalize})



  end

  def creature
    @zodiac = Zodiac.find_by({:creature => params[:the_creature].capitalize})

  end

  def show
    @zodiac = Zodiac.find_by({:id => params[:the_id]})

  end

  def create_row

    z= Zodiac.new
    z.sign = params[:symbol].downcase
    z.creature = params[:animal]
    z.fortune = params[:horoscope]
    z.save

    @symbol=  params[:symbol].capitalize
    @animal=  params[:animal].capitalize
    @horoscope=  params[:horoscope].capitalize

    #render('create_row.html.erb')
    redirect_to('http://localhost:3000/zodiacs')
  end
end
