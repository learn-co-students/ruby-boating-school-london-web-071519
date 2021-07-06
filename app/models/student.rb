class Student

    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test_name, status, instructor)
        BoatingTest.new(self, boating_test_name, status, instructor)
    end

    def self.find_student(name)
            @@all.find do |student|
            student.first_name == name
        end
    end

    def tests
        BoatingTest.all.select do |boatingtest|
            boatingtest.student.first_name == self.first_name
        end
    end

    def grade_percentage
        total_num = 0
        passed_num = 0 
        test_passed = tests.each do |test|
            if test.status == "pending"
                total_num == total_num
            elsif test.status == "passed"
                 passed_num += 1
                 total_num += 1
            elsif test.status == "failed"
                total_num += 1
            end
        end
        (passed_num.to_f/total_num.to_f * 100).round
    end

end
