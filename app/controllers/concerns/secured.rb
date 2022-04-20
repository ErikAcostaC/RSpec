# frozen_string_literal: false

# Modulo para hacer la seguridad dentro del modulo de post y otros
module Secured
  def authenticate_user!
    # Validar mediante regex
    token_regex = /Bearer (\w+)/
    # Aquí se debe leer el header de auth
    headers = request.headers
    # Verificar que sea valido
    if headers['Authorization'].present? && headers['Authorization'].match(token_regex)
      token = headers['Authorization'].match(token_regex)[1]
      if (Current.user = User.find_by_auth_token(token))
        return 
      end
    end
    # debemos verificar que el token que se extrar corresponda a un usuario

    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
end
