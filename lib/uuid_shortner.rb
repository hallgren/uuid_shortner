require "uuid_shortner/version"
require "uuid_shortner/guid_decoder"
require "uuid_shortner/guid_encoder"

module UuidShortner
	class << self
		def ALPHABET
			"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)
		end
	end
end
