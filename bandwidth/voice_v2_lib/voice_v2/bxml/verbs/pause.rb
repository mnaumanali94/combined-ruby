require_relative 'xml_verb'

module Bandwidth
	module VoiceV2
	  class Pause
	    include XmlVerb

	    def to_xml(xml)
	      xml.Pause(compact_hash({
	       'duration' => duration
	    }))
	    end
	  end
	end
end
