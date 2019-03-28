class Complement
	def self.of_dna(dna='')
		if dna=='G'
			return 'C'
		elsif  dna=='C'
			return 'G'
		elsif dna=='T'
			return 'A'
		elsif dna=='A'
			return 'U'
		else
			return dna
		end
	end

end
