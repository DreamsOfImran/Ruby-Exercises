class ResistorColors
	def self.value(colors)
		color_code=["black","brown","red","orange","yellow","green","blue","violet","grey","white"]
		colors.map { |color| color_code.index(color) }.join.to_i
	end

end
