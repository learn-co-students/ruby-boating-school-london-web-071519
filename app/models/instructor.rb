class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        counter = 0
        BoatingTest.all.each do |boat_test|
            if boat_test.student == student && boat_test.boating_test_name == test_name
                boat_test.status = "passed"
                counter += 1
            end
        end
        if counter = 0 
            BoatingTest.new(student, test_name, "passed", self)
        end
    end


    def fail_student(student, test_name)
        counter = 0
        BoatingTest.all.each do |boat_test|
            if boat_test.student == student && boat_test.boating_test_name == test_name
                boat_test.status = "failed"
                counter += 1
            end
        end
        if counter = 0 
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
