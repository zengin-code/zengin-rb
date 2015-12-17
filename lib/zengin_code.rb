require 'json'
require 'zengin_code/version'
require 'zengin_code/bank'
require 'zengin_code/branch'

module ZenginCode
  class << self
    def preload!
      banks = JSON.load(File.read(DATA_DIR.join('banks.json')))

      banks.values.each do |bank|
        ZenginCode::Bank.new(bank)
      end

      ZenginCode::Bank.all.each_pair do |code, bank|
        branches = JSON.load(File.read(DATA_DIR.join("branches/#{code}.json")))

        branches.values.each do |branch|
          branch = ZenginCode::Branch.new(bank, branch)
          bank.branches[branch.code] = branch
        end
      end
    end
  end

  preload!
end
