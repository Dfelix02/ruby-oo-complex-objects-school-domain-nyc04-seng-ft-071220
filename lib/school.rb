class School 

    attr_accessor :name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new

    end

    def add_student(student_name,student_grade)
        roster[student_grade] ||=[]
        roster[student_grade] << student_name
    end

    def grade(which_grade)
        roster.fetch(which_grade)
    end

    def sort
        roster_sorted = {}
        roster.each do |student_grade,student_name|
            roster_sorted[student_grade] = student_name.sort
        end
        roster_sorted    
    end
end