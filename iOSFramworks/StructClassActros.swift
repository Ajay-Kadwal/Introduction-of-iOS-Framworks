//
//  StructClassActros.swift
//  iOSFramworks
//
//  Created by AJAY KADWAL on 17/06/25.
//

import SwiftUI

struct StructClassActros: View {
    var body: some View {
        Text("Hell0")
            .onAppear {
                classTest2()
                
            }
    }
}

#Preview {
    StructClassActros()
}



// Struct pass by value, when pass value it's create every time new instance not changing in origanal instance
struct myStruct {
    var title: String
}


// Class pass by refrence, when initilize the class object and change the objcet value it's means it's changing in orignal instace so why classes colled pass by refrecne
class myClass {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

extension StructClassActros {
    
    private func runtest1() {
        print("Starting")
        structTest2()
//        structTest()
//        
//        divder()
//        testClass()
    }
    
    private func structTest() {
        let objectA = myStruct(title: "title first")
        print(objectA.title)
        
        // create a new objecte names is objectB and with objectA values
        var objectB = objectA
        print(objectB.title)
        
        objectB.title = "new title"
        print(objectB.title)
        print(objectA.title)
    }
}


extension StructClassActros {
    
    private func divder() {
        print("""

            ------------------
            
            """)
    }
    
    private func testClass() {
        let objectA =  myClass(title: "title fisrt")
        print(objectA.title)
        
        let objectB = objectA
        objectB.title = "new title"
        print(objectB.title)
        print(objectA.title)
    }
}


struct customStruct {
    var title: String
    
    func updateStruct(newtitle: String) -> customStruct {
        return customStruct(title: newtitle)
    }
}


struct mutatingStruct {
    var titel: String
    
    mutating func updateStruct(newtitle: String) {
        titel = newtitle
    }
}


extension StructClassActros {
    private func structTest2() {
        print("Struct test 2")
        
        var struct1 = myStruct(title: "Struct First")
        print(struct1.title)
        struct1.title = "Struct Second"
        print(struct1.title)
        
        var struct2 = customStruct(title: "custom first")
        print(struct2.title)
        struct2 = struct2.updateStruct(newtitle: "new two title")
        print(struct2.title)
       
        var mutaing = mutatingStruct(titel: "mutaing struct")
        print(mutaing.titel)
        mutaing.updateStruct(newtitle: "new mutating struct")
        print(mutaing.titel)
        
    }
}


class myClass2 {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func updateTitle(newTitle: String) {
        self.title = newTitle
    }
}


extension StructClassActros {
    
    private func classTest2() {
        print("Starting:")
        
        let class1 = myClass2(title: "title1")
        print("Class: ", class1.title)
        class1.title = "title2"
        print("Class: ", class1.title)
        
        let class2 = myClass2(title: "title1 f")
        print("Class2 : ", class2.title)
        class2.updateTitle(newTitle: "Updated title")
        print("Class2 : ", class2.title)
    }
}
