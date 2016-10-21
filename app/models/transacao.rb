class Transacao < ApplicationRecord
  belongs_to :empresa_origem, optional: true, :class_name => "Empresa"
  belongs_to :empresa_destino,optional: true, :class_name => "Empresa"
  
  
  
end
