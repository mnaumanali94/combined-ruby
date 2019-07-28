require_relative 'xml_verb'

module Bandwidth
	module VoiceV2
	  # The Hangup verb is used to hangup current call
	  class Hangup
	    include XmlVerb

	    def to_xml(xml)
	      xml.Hangup()
	    end
	  end
	end
end
