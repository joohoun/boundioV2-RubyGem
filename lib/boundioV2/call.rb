module BoundioV2
  class Call < Resource
    attr_accessor :tel_to, :cast, :id
    def self.exceptions
      super.merge(3 => NoVoiceFile, 4 => NotEnoughPoints)
    end

    def save
      res = self.class.request :post, "/call", :tel_to => tel_to, :cast => cast
      self.id = res["_id"]
      true
    end

    def status
      TelStatus.find(id)
    end

    class NotEnoughPoints < BoundioV2::Exception; end
    class NoVoiceFile < BoundioV2::Exception; end
  end
end
