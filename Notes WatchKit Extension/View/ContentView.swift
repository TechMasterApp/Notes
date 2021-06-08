//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Gaurav Bhasin on 4/7/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var notes = [Note]()
    @State private var text = ""
    @AppStorage("lineCount") var lineCount = 1
    
    // MARK: - FUNCTIONS
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(notes)
            let url = getDocumentsDirectory().appendingPathComponent("notes")
            try data.write(to: url)
        } catch {
            print(error)
        }
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HStack {
                TextField("Add new note", text: $text)
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
            }
            List {
                ForEach(notes) { note in
                    Text("Note")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
