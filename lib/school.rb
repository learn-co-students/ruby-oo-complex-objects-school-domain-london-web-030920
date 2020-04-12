
class School 
  attr_reader :name, :roster
  # these are reader methods because they are probably best left untouched. 
  # when we decide what is a reader/write/accessor, we are decided what functionalities 
  # we want to expose to the public and what we want to keep private  

  def initialize(name)
    @name = name
    @roster = {}
    # or you could do @roster = Hash.new {|h, k| h[k] = []}
    # which essentially does @roster[grade] ||= [] for you 
  end 

  def add_student(name, grade)
    # you can also write roster without the @, because you are
    # calling the roster accessor/reader method on the instance of the School 
    # if roster[grade]
    #   roster[grade] << name 
    # else 
    #   roster[grade] = []
    #   roster[grade] << name
    # end 
    # a much cleaner way of doing this! use or operator / with or without @ 
    @roster[grade] ||= []
    @roster[grade] << name
  end 
  
  def grade(grade)
    @roster[grade]
    # self.roster[grade] / another way of doing the above
  end 

  def sort
    roster.each do |grade, student| 
      student.sort! # need the ! to modify the hash permanantly 
    end 
  end 
end 


# IMPORTANT: when youre assigning inside another instance method, implicit reciever doesnt work
# because how would your program know if you were trying to call the name= method, or if you were 
# just saying a brand new local variable saying name = something new. 

# When youre calling on your isntance reader methods inside other instance methods, its an implicit reciever
# you dont have to say self.name, self.roster, but if you want to call one of yur instance setter methods, 
# use self because it wont know if youre calling a setter method or just defining a brand new local variable.
 