class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def edit
  end

  def index
  	@gossips = Gossip.all
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to @gossip
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
  end

  private
  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end

  

end
