class Document
  def initialize(title)
    @title = title
  end
end

class PDF < Document
  def print
    puts "Printing PDF: #{@title}"
  end
end


class Word < Document
  def print
    puts "Printing Word: #{@title}"
  end
end

# Word.new("Ruby Examples").print
# PDF.new("Polymorphism").print


class Whatsapp
  def call
    puts "Calling from Whatsapp"
  end
end

class Skype
  def call
    puts "Calling from Skype"
  end
end


apps = [Skype, Whatsapp]

apps.each do |obj| # Duck Typing allows us to call the same method over different objects withwout even considering the object types.
  obj.new.call
end
