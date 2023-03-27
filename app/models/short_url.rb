class ShortUrl < ApplicationRecord
  after_create :assign_short_code
  def assign_short_code
    url_short_code = HandleShortCode.generate_short_code(id)
    update({ short_code: url_short_code })
  end
end
