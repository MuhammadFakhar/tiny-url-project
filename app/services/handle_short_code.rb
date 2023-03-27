class HandleShortCode
  ALPHABET =
  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)

  def self.generate_short_code(unique_identifier)
    return ALPHABET[0] if unique_identifier.zero?

    s = ''
    base = ALPHABET.length
    while unique_identifier.positive?
      s << ALPHABET[unique_identifier.modulo(base)]
      unique_identifier /= base
    end
    s.reverse
  end
end