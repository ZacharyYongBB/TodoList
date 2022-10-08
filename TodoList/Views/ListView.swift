//
//  ListView.swift
//  TodoList
//
//  Created by Zachary on 8/10/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First title", isCompleted: false),
        ItemModel(title: "2nd item in the list!", isCompleted: true),
        ItemModel(title: "3rd item!", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) {
                ListRowView(item: $0)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: {
                    AddView()
                })
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

