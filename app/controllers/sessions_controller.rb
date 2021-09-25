class SessionsController < ApplicationController
    def index
        @user = User.new
    end

    def login
        @user = User.find_by(email: params[:email])

        respond_to do |format|
            if !!@user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                format.html { redirect_to topics_path, notice: "Usuário logado com sucesso!" }
            else
                format.html { redirect_to login_path, notice: "O nome ou senha está(ão) incorreto(s)" }
            end
        end
    end
end