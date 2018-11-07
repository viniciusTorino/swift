class Person {
    var name : String?
    var age : Int?
    var job : String?
    var jobStatus: String {
        if (self.name != nil) && (self.job != nil){
            return self.name! + " works at " + self.job!
        }else {
            return "NOT ESPECIFIED YET"
        }
    }
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func printPersonName() {
        if let name = self.name {
            print(name)
        }
      
    }
    func printJobStatus(){
        print(self.jobStatus)
    }
    

}

var vini = Person(name: "Vini", age: 22)
vini.printPersonName()
vini.printJobStatus()
vini.job = "Juno Enterprises"
vini.printJobStatus()

/*
  PRINTS
  Vini
  NOT ESPECIFIED YET
  Vini works at Juno Enterprises
*/
