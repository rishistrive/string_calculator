class StringCalculator
  def add(string)
    return 0 if string.empty?

    string.split(/,|\n/).map(&:to_i).sum
  end
end
