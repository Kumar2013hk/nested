class PjsController < ApplicationController
		def new
		@pj = Pj.new
		@pjs = Pj.all
   end
   def create
      @pj = Pj.new(params[:pj])
      if @pj.valid? 
         @pj.save
         redirect_to new_pj_path, notice: "Project #{ @pj.pname } Created Successfully."
      else 
          redirect_to new_pj_path      
      end
   end
end
