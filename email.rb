class Email
  def initialize(date,from,subject)
    @date = date
    @from = from
    @subject = subject
  end
 
 def date
    @date
  end
  
  def from
    @from
  end
  
  def subject
    @subject
  end
end

email = Email.new( "24-10-2018","Vova","Homework this week")

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"