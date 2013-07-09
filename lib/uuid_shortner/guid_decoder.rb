module UuidShortner
	module GuidDecoder
		def decode short_uuid
			guid_as_int = bijective_decode short_uuid
	 		guid_as_hex = guid_as_int.to_s(16)
	 		insert_uuid_hyphens guid_as_hex
		end

		private
		def insert_uuid_hyphens compact_guid
  			guid = compact_guid.rjust(32,'0')
  			"#{guid[0..7]}-#{guid[8..11]}-#{guid[12..15]}-#{guid[16..19]}-#{guid[20..31]}"
  		end
		def bijective_decode(s)
			# based on base2dec() in Tcl translation 
			# at http://rosettacode.org/wiki/Non-decimal_radices/Convert#Ruby
			i = 0
			base = UuidShortner.ALPHABET.length
			s.each_char { |c|  i = i * base + UuidShortner.ALPHABET.index(c) }
			i
		end

	end
end