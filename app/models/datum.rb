class Datum < ActiveRecord::Base
  def self.increToLinear(li, base)
    num = base
    result = []
    li.each do |i|
      num += i
      result << num
    end
    result
  end

  def self.formTime(size, interval)
    result = []
    size.times do |i|
      result << (Date.today - (size - 1 - i) * interval).to_s
    end
    result
  end

  def self.processWord( search )
    result = self.find_by(:compressed=>search.downcase.delete(" "))
    if result.nil?
      self.create(:original=>search, :compressed=>search.downcase.delete(" "))
    else
      result.count += 1
      result.save
    end
  end
end
