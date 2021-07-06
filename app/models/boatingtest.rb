class BoatingTest

    #setting setter and getter methods
    attr_accessor :student, :boating_test_name, :status, :instructor

    #setting an empty array to track all class objects created
    @@all = []

    def initialize(student, boating_test_name, status, instructor)
        @student = student
        @boating_test_name = boating_test_name
        @status = status
        @instructor = instructor
        #when creating an object add it to @@all to keep track of all instances of the class
        @@all << self
    end 

    #this class method allows you to read the @@all class variable which has all the instances of the class contained in it 
    def self.all
        @@all
    end

end
