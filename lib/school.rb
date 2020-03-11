# code here!
require 'pry'
class School
    attr_accessor :school_name, :roster, :student_name, :year_group
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, year_group)
        if @roster[year_group] 
            @roster[year_group] << student
        else 
            @roster[year_group] = []
            @roster[year_group] << student
        end
        end

    def grade(year_group)
        @roster[year_group]
    end
    def sort
     @roster.each{|key, value| key = value.sort!}
        end
end