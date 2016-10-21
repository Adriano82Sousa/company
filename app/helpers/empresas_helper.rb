module EmpresasHelper
	
	def formatCPF(value)
		return "" if value.blank?
		value.gsub(/(\d\d\d)(\d\d\d)(\d\d\d)(\d\d)/, '\1.\2.\3-\4')
	end

	def formatCNPJ(value)
		return "" if value.blank?
		value.gsub(/(\d\d)(\d\d\d)(\d\d\d)(\d\d\d\d)(\d\d)/, '\1.\2.\3/\4-\5')
	end

end
