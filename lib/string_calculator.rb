class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = get_numbers(string)
    numbers.sum
  end

  private

  def get_numbers(string)
    separators = [',', "\n"]
    if check_delimiter?(string)
      delimiter = string.split("\n")[0][2..-1]
      separators << delimiter
    end

    string.split(/#{Regexp.union(separators)}/).map(&:to_i)
  end

  def check_delimiter?(string)
    string.start_with?('//')
  end
end
