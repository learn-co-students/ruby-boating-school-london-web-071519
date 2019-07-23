require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'


s1 = Student.new("studentNick")
s2 = Student.new("studentImran")
s3 = Student.new("studentJack")
s4 = Student.new("studentRod")
s5 = Student.new("studentJosh")


i1 = Instructor.new("Instructor Gadget")
i2 = Instructor.new("Instructor Joseph")
i3 = Instructor.new("Instructor Bob")
i4 = Instructor.new("Instructor Clarence")


bt1 = BoatingTest.new(s1, "test1", "failed", i1)
bt2 = BoatingTest.new(s1, "test2", "failed", i1)
bt3 = BoatingTest.new(s1, "test2", "failed", i1)
bt4 = BoatingTest.new(s1, "test3", "pending", i1)
bt5 = BoatingTest.new(s2, "test3", "failed", i2)
bt6 = BoatingTest.new(s3, "test3", "failed", i2)
bt7 = BoatingTest.new(s4, "test4", "passed", i3)
bt8 = BoatingTest.new(s5, "test5", "failed", i3)







binding.pry
0