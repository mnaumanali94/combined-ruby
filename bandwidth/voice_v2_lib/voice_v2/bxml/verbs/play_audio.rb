require_relative 'xml_verb'

module Bandwidth
	module VoiceV2
	  # The PlayAudio verb is used to play an audio file in the call
	  class PlayAudio
	    include XmlVerb

	    def to_xml(xml)
	      xml.PlayAudio(url, compact_hash({
	       'username' => username,
	       'password' => password
	      }))
	    end
	  end
	end
end
