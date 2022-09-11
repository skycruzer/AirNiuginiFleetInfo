//
//  FleetInfo.swift
//  AirNiuginiFleetInfo
//
//  Created by Maurice Rondeau on 4/9/2022.
//

import Foundation

struct FleetInfo: Identifiable {
    
    var id = UUID()
    var name: String
    var photo: String
    var manufacturer: String
    var fleet: Int
    var rego:[Rego]
    var length: String
    var wingSpan: String
    var range: String
    var cruiseSpeed: String
    var powerPlant: [PowerPlant]
    var altitude: String
    var totalSeat: Int
    var businessClass: Int
    var enonomyClass: Int
    var internationalDestinatinations: [InternationalDestination]
}

struct InternationalDestination: Identifiable { //using identifiable - so we can iterate through the array
    let id = UUID()
    var name: String
}

struct Rego: Identifiable {
    let id = UUID()
    var reg: String
}

struct PowerPlant: Identifiable {
    let id = UUID()
    var name: String
}

extension FleetInfo {
    
    
    
    static func fleet()->[FleetInfo] {
        
        return [
            FleetInfo(name: "B767-300ER", photo: "b767", manufacturer: "Boeing", fleet: 2, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "59.94m",
                      wingSpan: "47.57m", range: "8100km", cruiseSpeed: "857kph",
                      powerPlant: [
                        PowerPlant(name: "2 x GE CF6"),
                        PowerPlant(name: "2 x PW4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160,
                      internationalDestinatinations: [InternationalDestination(name: "Brisbane"),
                                                      InternationalDestination(name: "Hong Kong"),
                                                      InternationalDestination(name: "Singapore"),
                                                      InternationalDestination(name: "Manila"),
                                                     ]),
            
            FleetInfo(name: "B737-800", photo: "b737", manufacturer: "Boeing", fleet: 1, rego: [
                Rego(reg: "P2-PXC")], length: "39.5m",
                      wingSpan: "35.79m", range: "5000-5500km", cruiseSpeed: "810-850kph",
                      powerPlant: [
                        PowerPlant(name: "2 x CFM56-7B26")],
                      altitude: "11300m", totalSeat: 144, businessClass: 16, enonomyClass: 128, internationalDestinatinations: [InternationalDestination(name: "Brisbane"),
                                                                                                                                InternationalDestination(name: "Lae"),
                                                                                                                                InternationalDestination(name: "Manila"),
                                                                                                                                InternationalDestination(name: "Mount Hagen"),
                                                                                                                                InternationalDestination(name: "Manus"),
                                                                                                                                InternationalDestination(name: "Sydney")]),
            FleetInfo(name: "F100", photo: "f100", manufacturer: "Fokker", fleet: 6, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "35.53m",
                      wingSpan: "22.08", range: "3000km", cruiseSpeed: "780kpm", powerPlant: [
                        PowerPlant(name: "2 x Rolls Royce Tay 650-15 turbo engines"),
                      ],
                      altitude: "11000m", totalSeat: 101, businessClass: 8, enonomyClass: 93, internationalDestinatinations: [InternationalDestination(name: "Alotau"),
                                                                                                                              InternationalDestination(name: "Lae"),
                                                                                                                              InternationalDestination(name: "Cairns"),
                                                                                                                              InternationalDestination(name: "Madang"),
                                                                                                                              InternationalDestination(name: "Wewak"),
                                                                                                                              InternationalDestination(name: "Vanimo"),
                                                                                                                              InternationalDestination(name: "Mount Hagen"),
                                                                                                                              InternationalDestination(name: "Manus"),
                                                                                                                              InternationalDestination(name: "Rabaul"),
                                                                                                                              InternationalDestination(name: "Hoskins"),
                                                                                                                              InternationalDestination(name: "Buka"),
                                                                                                                              InternationalDestination(name: "Kieta"),
                                                                                                                              InternationalDestination(name: "Kavieng"),
                                                                                                                              InternationalDestination(name: "Madang")]),
            FleetInfo(name: "F70", photo: "f70", manufacturer: "Fokker", fleet: 4, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "30.91m",
                      wingSpan: "28.08m", range: "3410km", cruiseSpeed: "743kph", powerPlant: [
                        PowerPlant(name: "2 xRolls Royce Tay 620-15 turbo-fan enines")],
                      altitude: "11000m", totalSeat: 73, businessClass: 8, enonomyClass: 65, internationalDestinatinations: [InternationalDestination(name: "Alotau"),
                                                                                                                                      InternationalDestination(name: "Lae"),
                                                                                                                                      InternationalDestination(name: "Cairns"),
                                                                                                                                      InternationalDestination(name: "Madang"),
                                                                                                                                      InternationalDestination(name: "Wewak"),
                                                                                                                                      InternationalDestination(name: "Vanimo"),
                                                                                                                                      InternationalDestination(name: "Mount Hagen"),
                                                                                                                                      InternationalDestination(name: "Manus"),
                                                                                                                                      InternationalDestination(name: "Rabaul"),
                                                                                                                                      InternationalDestination(name: "Goroka"),
                                                                                                                                      InternationalDestination(name: "Hoskins"),
                                                                                                                                      InternationalDestination(name: "Buka"),
                                                                                                                                      InternationalDestination(name: "Kieta"),
                                                                                                                                      InternationalDestination(name: "Kavieng"),
                                                                                                                                      InternationalDestination(name: "Madang")]),
            FleetInfo(name: "DHC8-400", photo: "dh8400", manufacturer: "Bombardier", fleet: 3, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "32.8m",
                      wingSpan: "28.4m", range: "3000km", cruiseSpeed: "670kph", powerPlant: [
                        PowerPlant(name: "2 x Pratt & Whitney PW150A"),
                        PowerPlant(name: "Pw4060")],
                      altitude: "7600m", totalSeat: 76, businessClass: 0, enonomyClass: 76, internationalDestinatinations: [InternationalDestination(name: "Popondetta"),
                                                                                                                                      InternationalDestination(name: "Tufi"),
                                                                                                                            InternationalDestination(name: "Kiunga"),
                                                                                                                            InternationalDestination(name: "Tabubil"),
                                                                                                                            InternationalDestination(name: "Moro"),
                                                                                                                            InternationalDestination(name: "Mendi"),
                                                                                                                            InternationalDestination(name: "Tari"),
                                                                                                                            InternationalDestination(name: "Kundiawa"),
                                                                                                                            InternationalDestination(name: "Wapenamanda"),
                                                                                                                                      InternationalDestination(name: "Daru")]),
            FleetInfo(name: "DHC8-Q315", photo: "dh8300", manufacturer: "Bombardier", fleet: 5, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "25.7m",
                      wingSpan: "27.4m", range: "1700km", cruiseSpeed: "510kph", powerPlant: [
                        PowerPlant(name: "2 x Pratt & Whitney PW123E")],
                      altitude: "6100m", totalSeat: 50, businessClass: 0, enonomyClass: 50, internationalDestinatinations: [InternationalDestination(name: "Popondetta"),
                                                                                                                                      InternationalDestination(name: "Tufi"),
                                                                                                                            InternationalDestination(name: "Kiunga"),
                                                                                                                            InternationalDestination(name: "Tabubil"),
                                                                                                                            InternationalDestination(name: "Moro"),
                                                                                                                            InternationalDestination(name: "Mendi"),
                                                                                                                            InternationalDestination(name: "Tari"),
                                                                                                                            InternationalDestination(name: "Kundiawa"),
                                                                                                                            InternationalDestination(name: "Wapenamanda"),
                                                                                                                                      InternationalDestination(name: "Daru")]),
            FleetInfo(name: "DHC8-202", photo: "dh8200", manufacturer: "Bombardier", fleet: 2, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")], length: "22.25m",
                      wingSpan: "25.89m", range: "1800km", cruiseSpeed: "550kph", powerPlant: [
                        PowerPlant(name: "2 x Pratt & Whitney PW123D")],
                      altitude: "7600m", totalSeat: 36, businessClass: 0, enonomyClass: 36, internationalDestinatinations: [InternationalDestination(name: "Popondetta"),
                                                                                                                                      InternationalDestination(name: "Tufi"),
                                                                                                                            InternationalDestination(name: "Kiunga"),
                                                                                                                            InternationalDestination(name: "Tabubil"),
                                                                                                                            InternationalDestination(name: "Moro"),
                                                                                                                            InternationalDestination(name: "Mendi"),
                                                                                                                            InternationalDestination(name: "Tari"),
                                                                                                                            InternationalDestination(name: "Kundiawa"),
                                                                                                                            InternationalDestination(name: "Wapenamanda"),
                                                                                                                                      InternationalDestination(name: "Daru")]),
            FleetInfo(name: "Falcon 900EX", photo: "falcon", manufacturer: "Dassault",fleet: 1, rego: [
                Rego(reg: "P2-PXV")], length: "20.21m",
                      wingSpan: "19.33m", range: "4500nm", cruiseSpeed: "650mph", powerPlant: [
                        PowerPlant(name: "3 x Honeywell TFE731")],
                      altitude: "51000ft", totalSeat: 12, businessClass: 0, enonomyClass: 12, internationalDestinatinations: [InternationalDestination(name: "Charters only")])
        ]
        
    }
}

