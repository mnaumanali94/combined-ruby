require_relative 'xml_verb'

module Bandwidth
	module VoiceV2
	  # The SpeakSentence verb is used to convert any text into speak for the caller
	  class SpeakSentence
	    include XmlVerb

	    def to_xml(xml)
	      xml.SpeakSentence(sentence, compact_hash({
	       'voice' => voice,
	       'locale' => locale,
	       'gender' => gender
	      }))
	    end
	  end
	end
end
