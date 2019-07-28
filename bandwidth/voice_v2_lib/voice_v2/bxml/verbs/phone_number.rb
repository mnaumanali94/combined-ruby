require_relative 'xml_verb'

module Bandwidth
	module VoiceV2
	  class PhoneNumber
	    include XmlVerb
	      def to_xml(xml)
	        xml.PhoneNumber(number, compact_hash({
	         'transferAnswerUrl' => transfer_answer_url,
	         'transferAnswerMethod' => transfer_answer_method,
	         'username' => username,
	         'password' => password,
	         'tag' => tag
	       }))
	    end
	  end
	end
end