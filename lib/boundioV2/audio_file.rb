module BoundioV2
  class AudioFile < Resource
    attr_accessor :convtext, :id, :file

    def self.api_version
      "vd2"
    end

    def self.exceptions
      super.merge(2 => InsufficientParametersOrTooBigFile, 6 => VoiceConversionError)
    end

    def save
      args = if file
        { :file => file, :filename => File.basename(file.path) }
      else
        { :convtext => convtext, :filename => convtext }
      end
      res = self.class.request :post, "/file/post", args
      self.id = res["fileid"]
      true
    end

    def +(file)
      BoundioV2::Cast.new(self, file)
    end

    class InsufficientParametersOrTooBigFile < BoundioV2::Exception; end
    class VoiceConversionError < BoundioV2::Exception; end
  end
end
