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
            
//                Image("px")
//                    .resizable()
//                    .scaledToFit()
//                    .cornerRadius(150)
//                    .opacity(0.5)
//                    .frame(width: 100, height: 100)
//                    .padding()
//                    .background( //added background to the image wow
//                        Circle()
//                        //.fill(.blue)
//                            .stroke(.linearGradient(colors: [.red, .pink, .purple], startPoint: .bottomTrailing, endPoint: .topLeading), lineWidth: 10)
//                            .frame(width: 110, height: 110)
//                    )
            
            
            VStack(alignment: .center, spacing: 5) {
                Image(aircraft.photo)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(50)
                    .opacity(0.4)
                Text(aircraft.manufacturer)
                    .font(.title)
                    .underline()
                    .fontWeight(.heavy)
                    .padding(.leading, 10)
                
                VStack(alignment: .center, spacing: 3) {
                    //RoundedRectangle(cornerRadius: 50)
                        Text("Total: \(aircraft.fleet)")
                        // Text(aircraft.rego)
                        Text("Lenght: \(aircraft.length)")
                        Text("Wing Span: \(aircraft.wingSpan)")
                        Text("Range: \(aircraft.range)")
                        Text("Cruise Speed: \(aircraft.cruiseSpeed)")
                        
                        HStack(){
                            Text("Engines:")
                            EngineView(engines: aircraft.powerPlant)
                        }
                        
                        Text("Cruising Altitude: \(aircraft.altitude) feet")
                        Text("Seating Capacity: \(aircraft.totalSeat)")
                        Text("Business Class: \(aircraft.businessClass)")
                        Text("Economy: \(aircraft.enonomyClass)")
                        
                    
                }
               
                .font(.subheadline)
                .padding(10)
                
                VStack {
                  
                    //DestinationView(destinations:aircraft.internationalDestinatinations)
                    DestinationView(destinations: aircraft.internationalDestinatinations, engines: aircraft.powerPlant)
                        .padding()
                        
                }
                
               Spacer()
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(aircraft.name)
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(aircraft: FleetInfo(name: "B767", photo: "b767", manufacturer: "Boeing", fleet: 2, rego: [Rego(reg: "P2-PXV"), Rego(reg: "P2-PXW")], length: "56m", wingSpan: "57.47", range: "12000km", cruiseSpeed: "857kph", powerPlant: [PowerPlant(name: "CF6"), PowerPlant(name: "PW4060")], altitude: "42000", totalSeat: 188, businessClass: 28, enonomyClass: 160, internationalDestinatinations: [InternationalDestination(name: "Brisbane"),
                                                                                                                                                                                                                                                                                                                                                                                                InternationalDestination(name: "Hong Kong"),
                                                                                                                                                                                                                                                                                                                                                                                                InternationalDestination(name: "Singapore"),
                                                                                                                                                                                                                                                                                                                                                                                                InternationalDestination(name: "Brisbane"),
                                                                                                                                                                                                                                                                                                                                                                                                InternationalDestination(name: "Manila"),
                                                                                                                                                                                                                                                                                                                                                                                                InternationalDestination(name: "Sydney")]))
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

struct DestinationView: View {
    
    let destinations:[InternationalDestination]
    let engines: [PowerPlant]
    
    
    var body: some View {
        
        VStack (){
            
                
            List() {
               
               // Section("International") {

                    ForEach(self.destinations, id: \.id){ dest in
                        
                        HStack {
                            Image(systemName: "airplane")
                            Text(dest.name)
                                
                            //.multilineTextAlignment(.leading)
                        }
                       
                    }
                 
                //}
                
//                Section("Domestic") {
//                   
//                        List {
//                            ForEach(engines) { engine in
//                                ForEach(self.engines, id: \.name) {eng in
//                                    Text(eng.name)
//                                }
//                            }
//                    }
//                }
                    
                    
                    
            }
            .listRowSeparator(/*@START_MENU_TOKEN@*/.hidden/*@END_MENU_TOKEN@*/)
            .listStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=List Style@*/DefaultListStyle()/*@END_MENU_TOKEN@*/)
           
            
            
           
            
        }
    }
}
