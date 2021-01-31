class School 
    attr_accessor :name, :roster
    def initialize(name)
        @name=name
        @roster = {}
    end

    def add_student(student, level)
        roster[level] ||= []
        roster[level] << student
    end

    def grade(level)
        roster.find do |x, y| 
          if x == level
            return y 
          end 
        end 
    end 

    def sort 
        new_hash = {}
        roster.each do |a, b| 
          new_hash[a] = b.sort 
        end 
        new_hash
    end 
end
