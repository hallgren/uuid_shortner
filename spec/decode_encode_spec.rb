require 'spec_helper'
require 'uuid'

module UuidShortner
	describe GuidDecoder do
		before(:all) do
			@dummy_object = Object.new
	    	@dummy_object.extend GuidDecoder
	    	@dummy_object.extend GuidEncoder
		end
		it 'should encode and decode to and from values' do
			u = UUID.new 
			10.times do
				id = u.generate
				short_id = @dummy_object.compress id
				short_id.length.should <= 22
				uuid = @dummy_object.stretch short_id
				uuid.should eql id	
			end
		end
		it "should decode and encode edge cases" do
			c1 = "00000310-250a-0130-47db-58b035f3cd77"
			e1 = @dummy_object.compress c1
			@dummy_object.stretch(e1).should eql c1
		end
	end
end