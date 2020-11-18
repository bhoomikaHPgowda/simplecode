import Foundation

class University {
  var name: String
  var colleges: [College]

  init(name: String) {
    self.name = name
    colleges = [College]()
  }

  func addcollege(c: College) {
     self.colleges.append(c)
  }

  func studentlist() {
    for college in colleges {
   print(college.studentCount )
       }
  }
  func addName(n: String) {
    print(n)
  }
    

   
}

class College {
  var name: String
  var branches: [Branch]
  var studentCount: [String]
  

  init(name: String ) {
    self.name = name
    studentCount = [String]()
      branches = [Branch]()
  }

  func addbranch(b: Branch) {
    self.branches.append(b)
  }
 func stdname(name: String) {
   self.studentCount.append(name)
 }
 
 /*func list() -> [String] {
   return studentCount
 }*/ 

}
class Branch {
  var name: String
  var students: [Student]
  

  init(name: String ) {
    self.name = name
    students = [Student]()
  }

  func addstudent(s: Student) {
    self.students.append(s)
  }
 
}
class Student {
  var name: String
  var usn: String
  init(name: String, usn: String) {
    self.name = name
    self.usn = usn
  }

}
let u1 = University(name: "VTU")

let c1 = College(name: "mit")
let c2 = College(name: "vvit")
let c3 = College(name: "mrit")
u1.addcollege(c: c1)
u1.addcollege(c: c2)
u1.addcollege(c: c3)
print(u1.colleges[0].name)

let b1 = Branch(name: "ece")
let b2 = Branch(name: "civ")
let b3 = Branch(name: "me")
let b4 = Branch(name: "is")

c1.addbranch(b: b1)
c1.addbranch(b: b2)
c1.addbranch(b: b3)
c1.addbranch(b: b4)

c2.addbranch(b: b1)
c2.addbranch(b: b2)
c2.addbranch(b: b3)
c2.addbranch(b: b4)

c3.addbranch(b: b1)
c3.addbranch(b: b2)
c3.addbranch(b: b3)
c3.addbranch(b: b4)

let s1 = Student(name: "bhoomika", usn: "123gcdhhd")
let s2 = Student(name: "bhoomi", usn: "gdt7887ddgg")
let s3 = Student(name: "bhoom", usn: "hhdghhhf89")


b1.addstudent(s: s1)
b1.addstudent(s: s2)
b1.addstudent(s: s3)

c1.stdname(name: s1.name)
c1.stdname(name: s2.name)
c2.stdname(name: s3.name)

u1.studentlist()
u1.addName(n: c1.name) 