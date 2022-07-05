//
//  ContentView.swift
//  StudentsInfo
//
//  Created by Abdullah Aiban on 04/07/2022.
//

import SwiftUI

struct StudentsDetails {
    let id = UUID()
    var fullName : String
    var year : Int
    var age : Int
}
struct ContentView: View {
    var student1 = StudentsDetails(fullName: "Abdullah Aiban", year: 4, age: 25)
    var student2 = StudentsDetails(fullName: "Sulaiman Hasan", year: 2, age: 24)
    var student3 = StudentsDetails(fullName: "Mohammed Dawood", year: 1, age: 27)
    @State var students = [
        StudentsDetails(fullName: "Abdullah Aiban", year: 4, age: 25),
        StudentsDetails(fullName: "Sulaiman Hasan", year: 2, age: 24),
        StudentsDetails(fullName: "Mohammed Dawood", year: 1, age: 27)
    ]
    var body: some View {
        VStack{
            Image("StudentID")
                .resizable()
                .frame(width: 350, height: 250)
            Text("سجل الطلبة")
                .font(.system(size: 40))
                .fontWeight(.semibold)
        List(students, id: \.id){
            student in
            VStack(alignment: .leading){
            Text("Student name : \(student.fullName)")
            Text("Year : \(student.year)")
            Text("Age : \(student.age)")
            }.padding()
        }
            Text("Number of Students is \(students.count)")
                .font(.system(size: 30))
                .padding()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
