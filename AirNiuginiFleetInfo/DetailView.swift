//
//  detailView.swift
//  AirNiuginiFleetInfo
//
//  Created by Maurice Rondeau on 09/09/2022.
//

import SwiftUI

struct DetailView: View {
    
    let aircraft: FleetInfo
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.red, Color.blue, .orange, .red, .purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack() {
                Image("px")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(150)
                    .opacity(0.5)
                    .frame(width: 100, height: 100)
                    .padding()
                    .background( //added background to the image wow
                Circle()
                    //.fill(.blue)
                    .stroke(.linearGradient(colors: [.red, .pink, .purple], startPoint: .bottomTrailing, endPoint: .topLeading), lineWidth: 10)
                    .frame(width: 110, height: 110)
               )
                VStack{
                    Image(aircraft.photo)
                        .resizable()
                        .scaledToFit()
                    VStack(alignment: .leading) {
                    Text("Fleet: \(aircraft.name)")
                        .font(.largeTitle)
                    Text("Manufacturer: \(aircraft.manufacturer)")
                        .font(.headline)
                    Text("Total: \(aircraft.fleet)")
                       // Text(aircraft.rego)
                        Text("Wing Span: \(aircraft.wingSpan)")
                        Text("Range: \(aircraft.range)")
                        Text("Cruise Speed: \(aircraft.cruiseSpeed)")
                       // Text(EngineView(engines: engine.))
                        Text("Normal Cruising Altitude: \(aircraft.altitude)")
                        Text("Seating Capacity: \(aircraft.totalSeat)")
                        Text("Business Class: \(aircraft.businessClass)")
                        Text("Economy: \(aircraft.enonomyClass)")
                       // Text("Destinations: \(aircraft.desti)")
                        //EngineView(engines: engine.name)
                        
                }
                    .foregroundColor(.secondary)
                }
            
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(aircraft.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(aircraft: FleetInfo(name: "B767", photo: "b767", manufacturer: "Boeing", fleet: 2, rego: [Rego(reg: "P2-PXV"), Rego(reg: "P2-PXW")], wingSpan: 57.47, range: "12000km", cruiseSpeed: "857kph", powerPlant: [PowerPlant(name: "CF6"), PowerPlant(name: "PW4060")], altitude: "42000", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"), Destination(name: "Singapore")]))
    }
}

struct EngineView: View {
    
    let engines: [PowerPlant]
    
    var body: some View {
        HStack{
            ForEach(engines) { engine in
                Text(engine.name)
            }
        }
    }
}
