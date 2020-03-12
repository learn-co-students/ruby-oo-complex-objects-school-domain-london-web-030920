class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    def add_student(student, year)
    if  @roster[year]
        @roster[year] << student

    else @roster[year] = []
         @roster[year] << student
    end
  end

  def grade(year)
    return @roster[year]
  end

  def sort
    sorted = {}
    roster.each {|grade, students|
      sorted[grade] = students.sort
    }
    sorted
  end
end