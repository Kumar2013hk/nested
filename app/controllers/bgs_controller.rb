class BgsController < ApplicationController
	def new
		@pj = Pj.find(params[:id])
		@bg = @pj.bgs.build
	end
	def create
		@pj = Pj.find(params[:id])
		@bg = @pj.bgs.build(params[:bg])
		if @bg.valid?
			@bg.save
			redirect_to new_bg_path(:id => @pj.id)
		else
			redirect_to new_bg_path
		end
	end
  
 def index
    # @users = User.all

  #   	@pj = Pj.find(params[:id])
		# @bg = @pj.bgs.build
   @bg = Bg.all

   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bg }
    end
  end
  
  def show
    @bg = Bg.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bg }
    end
  end
  
  def edit
  # 	@pj = Pj.find(params[:id])
		# @bg = @pj.bgs.find(params[:id])
    
  end
  
  def update
    @bg = Bg.find(params[:id])

    respond_to do |format|
      if @bg.update_attributes(params[:bg])
        format.html { redirect_to bgs_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bg.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy

    # @pj = Pj.find(params[:id])
    # @bg = @pj.bgs.find(params[:id])
    @bg = Bg.destroy(params[:id])
    # @bg.destroy

    respond_to do |format|
      format.html { redirect_to bgs_url }
      format.json { head :no_content }
    end
  end
end
