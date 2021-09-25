class UsersController < ApplicationController
    @users = User.all;
    
    def index
        users = User.all
        render json: users.to_json, status: 200
    end

    def show
        user = User.find(params[:id])
        render json: user.to_json, status: 200
    end   

    def new
        @users = User.new
    end
    
    def create
        users = User.new(user_params)
    
        if users.save
            render json: users.to_json, status: 200
        #   redirect_to @users
        else
          render :new, status: :unprocessable_entity
        end
    end

    def update
        user = User.find(params[:id])
    
        if user.update(user_params)
        #   redirect_to @users
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        # render json: status: 200
    end
    private
    def user_params
      params.require(:user).permit(:email, :name, :sex, :status)
    end
end
