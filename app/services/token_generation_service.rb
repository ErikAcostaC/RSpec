# frozen_string_literal: true

# Clase para generar un token de autenticación
class TokenGenerationService
  def self.generate
    # SecureRandom es un modulo incluido en rails
    SecureRandom.hex
  end
end
