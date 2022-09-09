//
//  ContentView.swift
//  AirNiuginiFleetInfo
//
//  Created by Maurice Rondeau on 4/9/2022.
//

import SwiftUI

struct MainView: View {
    
    //@State var dest = ""
    
    let fleet = FleetInfo.fleet()
    
    //.sorted { $0.name < $1.name }
    //let filteredNames = [String]()
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    
                    
                    Image("px")
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(100)
                        .frame(width: 100, height: 100, alignment: .leading)
                        .opacity(0.4)
                    
                        .background(
                            Circle()
                                .stroke()
                                .fill(.white)
                                .frame(width: 110, height: 110)
                        )
                    
                    Text("Fleet Information")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .clipShape(Rectangle())
                        .cornerRadius(50)
                        .opacity(0.6)
                        .padding(.top)
                    
                    
                    List() {      //(self.fleet, id: \.id) { myRow in
                        
                        ForEach (fleet) { myRow in
                            
                            
                            VStack(alignment: .leading) {
                                
                                HStack {
                                    
                                    Image(myRow.photo)
                                    
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height:  50)
                                        .cornerRadius(50)
                                    
                                    Text(myRow.name)
                                    //.background(.red)
                                        .font(.subheadline)
                                        .foregroundColor(.primary)
                                        .padding()
                                    //Text(myRow.series)
                                    NavigationLink(destination: DetailView(aircraft: myRow)) {
                                        
                                    }
                                    //DestinationView(destinations: myRow.destinatinations)
                                }
                                Text(myRow.manufacturer)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .padding(.top, -20)
                                // EngineView(engines: myRow.powerPlant)
                                
                            }
                        }
                    }
                }
            }
            
            
            Image(systemName: "info.circle.fill")
            
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
        
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


struct DestinationView: View {
    
    let destinations:[Destination]
    
    var body: some View {
        
        HStack{
            ForEach(destinations, id: \.id){ dest in
                Text(dest.name)
            }
        }
    }
}
