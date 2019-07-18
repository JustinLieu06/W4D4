class Array

  def uniq
    hash = Hash.new(0)
    self.each do |ele|
      hash[ele] += 1
    end
    hash.keys
  end

  def two_sum
    ret = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        ret << [i, j] if self[i] + self[j] == 0
      end
    end
    ret
  end

end