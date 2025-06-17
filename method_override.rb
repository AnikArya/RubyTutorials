class Mummy
  def bolna
    puts "Suno beta, shaam 7 baje ghar aana."
  end
end

class Anik < Mummy
  def bolna
    puts "Main toh 9 baje aaungi 😎"
  end
end

meri_baat = Anik.new
meri_baat.bolna
