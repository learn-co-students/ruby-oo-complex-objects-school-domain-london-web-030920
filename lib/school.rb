require 'pry'
class School

    attr_accessor :roster 

def initialize(name)
    @name = name
    @roster = {}     
end
def add_student(student, grade)
   if @roster[grade]
    @roster[grade] << student
   else
    @roster[grade] = []
    @roster[grade] << student
    end
end 

def grade(grade)
    @roster[grade]

    # binding.pry
    end
def sort

     @roster.each do |key, value|
     value.sort!
    # @roster.sort.to_h
     end 

    
    



# binding.pry

end


end 