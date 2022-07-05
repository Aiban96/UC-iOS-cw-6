//
//  ContentView.swift
//  MyDiary
//
//  Created by Abdullah Aiban on 04/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var colorsArray = [Color.green, Color.purple, Color.red, Color.yellow]
    @State var selectedColor = Color.white
    @State var textAdded = ""
    var body: some View {
        NavigationView{
            ZStack{
                Image("Gray")
            VStack{
                Text("اختر اللون المفضل")
                    HStack{
                        ForEach(colorsArray, id: \.self){
                            color in
                            Circle()
                                .fill(color)
                                .frame(width: 60, height: 60)
                                .padding()
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                    }
            Text("ماذا تريد ان تكتب؟")
                    .font(.system(size: 30))
                    .bold()
            TextField("اكتب هنا", text: $textAdded)
                .frame(width: 400, height: 70)
                .background()
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                NavigationLink {
                    SecondView(text: textAdded, color: selectedColor)
                } label: {
                Text("SAVE")
                        .font(.system(size: 30))
                    
                }
        }
            }
            .navigationTitle("دفتر اليوميات")
            .foregroundColor(Color.black)
        }
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
