require "pry"

class School

    attr_accessor :name, :grade

def initialize(roster)
@roster = {}
end

def roster
    @roster
end




def add_student(name, grade)

if roster.keys.include?(grade)
    roster[grade] << name

else
    roster[grade] = []
    roster[grade] << name

end
end

def grade(grade)
    grade = roster[grade]

end

def sort
    roster.each{|key, value|value.sort!}
end

end