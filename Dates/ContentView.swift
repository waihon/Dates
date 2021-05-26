//
//  ContentView.swift
//  Dates
//
//  Created by Waihon Yew on 26/05/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    var components = DateComponents()
    components.hour = 7
    components.minute = 30
    let dateFromComponents = Calendar.current.date(from: components) ?? Date()
        
    return Form {
      Section(header: Text("Date from Components")) {
        Text("Hour: \(components.hour ?? 0)")
        Text("Minute: \(components.minute ?? 0)")
        Text("Date: \(dateFromComponents)")

      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
