class StringCalculator
  def add(string)
    return 0 if string.empty?

    numbers = get_numbers(string)
    negative_numbers = find_negative_numbers(numbers)

    raise create_negative_error_message(negative_numbers) unless negative_numbers.empty?

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

  def find_negative_numbers(numbers)
    numbers.select(&:negative?)
  end

  def create_negative_error_message(numbers)
    "negative numbers not allowed #{numbers.join(',')}"
  end
end
