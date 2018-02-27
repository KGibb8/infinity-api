module Utils
  def self.to_decimal(integer)
    return unless integer.is_a?(Numeric)
    integer.to_d / 10**2
  end

  def self.to_integer(decimal)
    return unless integer.is_a?(Numeric)
    (decimal * 10**2).to_i
  end
end
