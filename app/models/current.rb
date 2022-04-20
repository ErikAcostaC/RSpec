# frozen_string_literal: false

# En esta clase se guarda el contexto que quermos que sea accesible para la sesion actual
class Current < ActiveSupport::CurrentAttributes
  attribute :user
end
