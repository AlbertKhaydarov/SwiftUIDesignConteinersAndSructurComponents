//
//  ContentView.swift
//  SwiftUIDesignConteinersAndSructurComponents
//
//  Created by Альберт Хайдаров on 23.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State private var isOn = false
    @State private var date = Date()
    
    
    enum Developer: String, CaseIterable, Identifiable {
        
        case intern, junior, middle, senior, teamlead
        var id: Self {self}
    }
    @State private var developers = [
        Developer.intern,
        Developer.junior,
        Developer.middle,
        Developer.senior,
        Developer.teamlead
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        
        NavigationView {
            
            //            ScrollView (.horizontal) {
            //
            //                HStack {
            //                    ForEach((0...5), id: \.self) { _ in
            //                                               Text("Random text")
            //                                                   .foregroundColor(Color.random)
            //                                                   .padding(16)
            //
            //                                           }
            //                }
            //            }
            
            
//            ScrollView (.vertical) {
//                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach((0...50), id: \.self) { _ in
//                        Text("Random text")
//                            .foregroundColor(Color.random)
//                            .padding(16)
//                    }
//
//                }
//            }
            
            ScrollView (.horizontal) {
                            LazyHGrid(rows: columns, spacing: 20) {
                                ForEach((0...50), id: \.self) { _ in
                                    Text("Random text")
                                        .foregroundColor(Color.random)
                                        .padding(4)
                                }
            
                            }
                        }
            
            //            ScrollView {
            //                HStack {
            //                    VStack {
            //                        ForEach((0...40), id: \.self) { _ in
            //                            Text("Random text")
            //                                .foregroundColor(Color.random)
            //                                .padding(16)
            //
            //                        }
            //                    }
            //                    Spacer()
            //                }
            //            }
            
            
            
            //            List {
            //                Text(Developer.intern.rawValue.capitalized).tag(Developer.intern)
            //                Text(Developer.junior.rawValue.capitalized).tag(Developer.junior)
            //                Text(Developer.middle.rawValue.capitalized).tag(Developer.middle)
            //                Text(Developer.senior.rawValue.capitalized).tag(Developer.senior)
            //                Text(Developer.teamlead.rawValue.capitalized).tag(Developer.teamlead)
            //            }
            
            //            List {
            //                ForEach(developers, id: \.self) {developer in
            //                    Text(developer.rawValue.capitalized)
            //                }
            //                .onDelete { offets in
            //                    developers.remove(atOffsets: offets)
            //                }
            //            }
            //            .refreshable {
            //                developers = [
            //                    Developer.intern,
            //                    Developer.junior,
            //                    Developer.middle,
            //                    Developer.senior,
            //                    Developer.teamlead
            //                ]
            //            }
            //
            //            .toolbar {
            //                EditButton()
            //            }
            
            //            Form {
            //                Section(header: Text("Profile")) {
            //                    TextField("First name",
            //                              text: $userName,
            //                              prompt: Text("First name"))
            //                    TextField("Second name",
            //                              text: $userName,
            //                              prompt: Text("Second name"))
            //                    DatePicker("BirthDay",
            //                               selection: $date,
            //                               displayedComponents: [.date])
            //                }
            //
            //                Section(header: Text("Push notification")) {
            //                    Toggle("Push enabled", isOn: $isOn)
            //                    Button("Go to phone settings",
            //                           action: {
            //
            //                    })
            //                }
            //
            //                Section() {
            //                    Button("Logout") {
            //
            //                    }
            //                }
            //                    Section() {
            //                        Button("Login") {
            //
            //                        }
            //                }
            //            }
            //                List {
            //                    Section(header: Text("Profile")) {
            //                        TextField("First name",
            //                                  text: $userName,
            //                                  prompt: Text("First name"))
            //                        TextField("Second name",
            //                                  text: $userName,
            //                                  prompt: Text("Second name"))
            //                        DatePicker("BirthDay",
            //                                   selection: $date,
            //                                   displayedComponents: [.date])
            //                    }
            //
            //                    Section(header: Text("Push notification")) {
            //                        Toggle("Push enabled", isOn: $isOn)
            //                        Button("Go to phone settings",
            //                               action: {
            //
            //                        })
            //                    }
            //
            //                    Section() {
            //                        Button("Logout") {
            //
            //                        }
            //                    }
            //            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

extension Color {
    static var random: Color {
        return Color (
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
