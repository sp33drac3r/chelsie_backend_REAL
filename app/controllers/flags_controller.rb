class FlagsController < ApplicationController
  def create
    @flag = Flag.new(user_id: params[:user_id], flaggable: params[:flaggable], flaggable_type: params[:flaggable_type])
    if @flag.save
      render json: {response: '200'}
    else
      render json: {response: '500'}
    end
  end

  def destroy
    @flag = Flag.find(params[:id])
    if @flag.destroy
      render json: {response: '200'}
    else
      render json: {response: '500'}
    end
  end

  # private
  # # def flag_params
  # #   params.require(:flag).permit(:user, :flaggable, :flaggable_type)
  # # end
end
