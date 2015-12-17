require 'zengin_code'

class ZenginCode::Bank
  @banks = {}

  class << self
    def [](code)
      @banks[code]
    end

    def []=(code, bank)
      @banks[code] = bank
    end

    def all
      @banks
    end
  end

  def initialize(options = {})
    @code = options['code']
    @name = options['name']
    @kana = options['kana']
    @hira = options['hira']
    @roma = options['roma']
    @branches = {}
    self.class[code] = self
  end
  attr_reader :code, :name, :kana, :hira, :roma, :branches
end
