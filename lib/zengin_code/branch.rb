require 'zengin_code'

class ZenginCode::Branch
  def initialize(bank, options = {})
    @bank = bank
    @code = options['code']
    @name = options['name']
    @kana = options['kana']
    @hira = options['hira']
    @roma = options['roma']
  end
  attr_reader :bank, :code, :name, :kana, :hira, :roma
end
