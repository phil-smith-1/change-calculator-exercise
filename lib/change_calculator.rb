class ChangeCalculator
  DENOMINATIONS = [2, 1, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01].freeze

  def self.denominations(value)
    coins = DENOMINATIONS.map { |denomination| [denomination.to_s.to_sym, 0] }.to_h
    current_value = value
    DENOMINATIONS.each do |denomination|
      return coins if current_value.zero?

      divmod_arr = current_value.divmod(denomination)
      coins[denomination.to_s.to_sym] = divmod_arr[0]
      current_value = divmod_arr[1].round(2)
    end
    coins
  end
end
