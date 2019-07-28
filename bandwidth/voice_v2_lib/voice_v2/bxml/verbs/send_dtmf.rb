require_relative 'xml_verb'
module Bandwidth
	module VoiceV2
	  class SendDtmf
	    include XmlVerb

	    def to_xml(xml)
	      xml.SendDtmf(dtmf)
	    end
	  end
	end
end
