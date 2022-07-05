//
//  SecondView.swift
//  MyDiary
//
//  Created by Abdullah Aiban on 05/07/2022.
//

import SwiftUI

struct SecondView: View {
    @State var text = ""
    @State var color = Color.white
    var body: some View {
        ZStack{
            color
                .ignoresSafeArea()
            Text(text)
                .font(.system(size: 50))
                .foregroundColor(Color.black)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(text: "", color: Color.white)
    }
}
