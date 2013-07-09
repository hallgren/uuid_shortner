module UuidShortner
	module GuidEncoder
		def encode uuid
			clean_guid = uuid.gsub(/[^a-zA-Z0-9 ]/,'')
			guid_as_hex = clean_guid.hex
			short_id = bijective_encode guid_as_hex
		end
		private
  		def bijective_encode(i)
			# from http://refactormycode.com/codes/125-base-62-encoding
			# with only minor modification
			return UuidShortner.ALPHABET[0] if i == 0
			s = ''
			base = UuidShortner.ALPHABET.length
			while i > 0
		    	s << UuidShortner.ALPHABET[i.modulo(base)]
		    	i /= base
		  	end
		  	s.reverse
		end
	end
end