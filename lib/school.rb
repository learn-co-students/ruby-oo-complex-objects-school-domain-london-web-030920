
class School 
    attr_accessor :roster, :school_name, :grade

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end 

def add_student(student_name, grade)
    if @roster[grade]
        @roster[grade] << student_name
      else
        @roster[grade] = []
        @roster[grade] << student_name
end 
end

def grade(year_group)
    @roster[year_group] 
end 

    def sort
    @roster.select do |grade, students| 
    students.sort!
    end
end

end 

