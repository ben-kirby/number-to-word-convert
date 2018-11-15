class Convert
  def initialize(number)
    @number = number
  end

  def toArray

  end


  def toWord
    numberHash = Hash.new()
      numberHash.store(0, "zero")
      numberHash.store(1, "one")
      numberHash.store(2, "two")
      numberHash.store(3, "three")
      numberHash.store(4, "four")
      numberHash.store(5, "five")
      numberHash.store(6, "six")
      numberHash.store(7, "seven")
      numberHash.store(8, "eight")
      numberHash.store(9, "nine")
      numberHash.store(10, "ten")
      numberHash.store(11, "eleven")
      numberHash.store(12, "twelve")
      numberHash.store(13, "thirteen")
      numberHash.store(14, "fourteen")
      numberHash.store(15, "fifteen")
      numberHash.store(16, "sixteen")
      numberHash.store(17, "seventeen")
      numberHash.store(18, "eighteen")
      numberHash.store(19, "nineteen")
      numberHash.store(20, "twenty")
      numberHash.store(30, "thirty")
      numberHash.store(40, "forty")
      numberHash.store(50, "fifty")
      numberHash.store(60, "sixty")
      numberHash.store(70, "seventy")
      numberHash.store(80, "eighty")
      numberHash.store(90, "ninety")

    if (@number >= 0 && @number <= 19) #numbers from 0-19 will just look up in the hash.
      numberHash.fetch(@number)
#--------------------------------------------------------------
    elsif (@number >= 20 && @number <= 99) #20-99
      smallnumber = @number.to_s.split(//)
      smallnumber.reverse!()
      if (smallnumber[0] == "0")
        numberHash.fetch(@number)

      else
        smallnumber = smallnumber.to_i.split(//)
        wordArray = []
        completeWord = ""

        smallnumber.each() do |tiny|
            wordArray.push(numberHash.fetch(tiny))
          end
        wordArray.reverse!()
        completeWord = wordArray.join(" ")
      end
    end
  end
end

number = Convert.new
number.toWord
