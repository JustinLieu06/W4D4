class Array

  def uniq
    hash = Hash.new(0)
    self.each do |ele|
      hash[ele] += 1
    end
    # i = 0
    # while i < self.length
    #   hash[self[i]]
    #   i += 1
    # end
    hash.keys
  end


end