enum StudentDetails: Error{
    case InvalidName
    case InvalidAge
}

class stud{
var flag=0
func studenttest(name: String, age: Int) throws{
  guard age > 18 && age < 30 else{
    throw StudentDetails.InvalidAge
  }
  guard name.count > 0 else{
    throw StudentDetails.InvalidName
  }
   print("My name is \(name) and my age is \(age)")
}

func transformName(_ name: inout [String]) {
    name = name.map { $0.uppercased() }
}

func studentMarks(m: Int...)-> Int{
  var tot: Int=0
  for n in m{
    tot+=n
  }
  return tot
}

}

do{
    let s=stud();
    
    try s.studenttest(name: "Tarana", age: 20)
    let marks = s.studentMarks(m:25,26,10)
    print("Total Marks of the student: \(marks)")

    var names: [String] = ["Stefen", "Bella","Demon","Keven"]
    print(".....Name of the Students....")
    s.transformName(&names)
    for i in names{
      print(i)
    }

}catch let error{
    print(error)
}
