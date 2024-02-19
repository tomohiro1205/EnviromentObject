//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by 木村朋広 on 2024/02/19.
//

import SwiftUI

class Pet: ObservableObject {
    @Published var name = ""
    @Published var weight = ""
    @Published var height = ""
    @Published var age = ""
}

struct ContentView: View {
    @EnvironmentObject var pet: Pet
    @State var isShowInfoView = false

    var body: some View {
        VStack {
            Text("あなたのペット情報を入力してください。")
            TextField("名前", text:$pet.name)
            TextField("体重", text:$pet.weight)
            TextField("体長", text:$pet.height)
            TextField("年齢", text:$pet.age)
            Button("決定"){
                isShowInfoView = true
            }
            .sheet(isPresented: $isShowInfoView) {
                InfoView()
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}


struct InfoView: View{
    @EnvironmentObject var pet: Pet
    var body: some View {
        VStack{
            Text("あなたのペット情報")
            Text("名前: \(pet.name)")
            Text("体重: \(pet.weight)")
            Text("体長: \(pet.height)")
            Text("年齢: \(pet.age)")
        }
    }
}

#Preview {
    ContentView()
}
