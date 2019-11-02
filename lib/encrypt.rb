class Encrypt
  attr_reader :encryption 
  def initialize(traits)
    @encryption = traits[encryption]
    @key = traits[key]
    @date = traits[date]
  end
end
