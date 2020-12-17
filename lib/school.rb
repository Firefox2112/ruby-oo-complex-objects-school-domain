# code here!
class School
    attr_reader :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    
    def add_student(name,grade)
    if (roster[grade])
        roster[grade] << name
    else
        roster[grade] = []
        roster[grade] << name
    end 
    
    def grade(grade)
        @roster.map do |key, value|
            if grade == key
                return value
            end
        end
    end


    end
    def sort
        roster.each do |key, value|
            value.sort!
        end
      roster.sort.to_h
    end
end


#need to take some time to break this one down. With all the different parts and "end" everywhere its confusing me.