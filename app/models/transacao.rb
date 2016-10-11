class Transacao < ApplicationRecord
  belongs_to :empresa_origem, :class_name => "Empresa"
  belongs_to :empresa_destino, :class_name => "Empresa"
end
