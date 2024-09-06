class SessionsController < ApplicationController
  def create
    user = User.find_by(usuario: params[:usuario])
    if user && user.authenticate(params[:contrasena])
      render json: { message: 'Login Exitoso', user: user }, status: :ok
    else
      render json: { message: 'Usuario o Contraseña Incorrecto' }, status: :unauthorized
    end
  end
end
