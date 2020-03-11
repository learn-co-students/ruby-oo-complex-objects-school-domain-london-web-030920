# code here!
require 'pry'
class School

    attr_accessor :name, :roster
    
    def initialize(school_name)
        @name = school_name
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
        
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        new_hash = {}
        @roster.each do |key, value|
            new_hash[key] = value.sort
        end
        new_hash
    end
end
    