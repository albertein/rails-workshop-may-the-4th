class PollitosController < ApplicationController
  def index
    @pollitos = Pollito.all
  end

  def new
    @pollito = Pollito.new
  end

  def create
    @pollito = Pollito.new params[:pollito]
    if @pollito.save
      redirect_to pollitos_path, :notice =>
        'Pollito creado'
    else
      render :action => 'new'
    end
  end

  def edit
    @pollito = Pollito.find(params[:id])
  end

  def update
    @pollito = Pollito.find(params[:id])
    @pollito.update_attributes params[:pollito]  
    if @pollito.save
      redirect_to pollitos_path, :notice => 'Pollito modificado'    
    else
      render :action => 'edit'
    end
  end
end
