class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def initialize(firstName, lastName, id, scores)
        super(firstName, lastName, id)
        @scores = scores
    end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate
        sum = 0
        @scores.each do |score|
            sum += score
        end
        
        average = sum / @scores.size

        if average >= 90
            return 'O' 
        elsif average >= 80
            return 'E' 
        elsif average >= 70
            return 'A' 
        elsif average >= 55
            return 'P' 
        elsif average >= 40
            return 'D' 
        else
            return 'T' 
        end
    end
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: " + s.calculate)