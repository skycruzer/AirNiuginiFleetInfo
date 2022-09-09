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
    var wingSpan: Double
    var range: String
    var cruiseSpeed: String
    var powerPlant: [PowerPlant]
    var altitude: String
    var totalSeat: Int
    var businessClass: Int
    var enonomyClass: Int
    var destinatinations: [Destination]
}

struct Destination: Identifiable { //using identifiable - so we can iterate through the array
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
                Rego(reg: "P2-PXW")],
                      wingSpan: 47.57, range: "8100km", cruiseSpeed: "857kph",
            powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore"),
                                             Destination(name: "Sydney")]),
            FleetInfo(name: "B737-800", photo: "b737", manufacturer: "Boeing", fleet: 1, rego: [
                Rego(reg: "P2-PXC")],
                      wingSpan: 35.79, range: "5000-5500km", cruiseSpeed: "810-850kph",
            powerPlant: [
            PowerPlant(name: "CFM56 - 7B26")],
                      altitude: "11300m", totalSeat: 144, businessClass: 16, enonomyClass: 128, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Lae"),
                                             Destination(name: "Manila"),
                                             Destination(name: "Mount Hagen"),
                                             Destination(name: "Sydney")]),
            FleetInfo(name: "F100", photo: "f100", manufacturer: "Fokker", fleet: 6, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")],
                      wingSpan: 35.53, range: "3000km", cruiseSpeed: "780kpm", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")]),
            FleetInfo(name: "F70", photo: "f70", manufacturer: "Fokker", fleet: 4, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")],
                      wingSpan: 47.57, range: "8100", cruiseSpeed: "857", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")]),
            FleetInfo(name: "DHC8-400", photo: "dh8400", manufacturer: "Bombardier", fleet: 3, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")],
                      wingSpan: 47.57, range: "8100", cruiseSpeed: "857", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")]),
            FleetInfo(name: "DHC8-Q315", photo: "dh8300", manufacturer: "Bombardier", fleet: 5, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")],
                      wingSpan: 47.57, range: "8100", cruiseSpeed: "857", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")]),
            FleetInfo(name: "DHC8-202", photo: "dh8200", manufacturer: "Bombardier", fleet: 2, rego: [
                Rego(reg: "P2-PXV"),
                Rego(reg: "P2-PXW")],
                      wingSpan: 47.57, range: "8100", cruiseSpeed: "857", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")]),
            FleetInfo(name: "Falcon 900EX", photo: "falcon", manufacturer: "Dassault",fleet: 1, rego: [
                Rego(reg: "P2-PXV")],
                      wingSpan: 47.57, range: "8100", cruiseSpeed: "857", powerPlant: [
            PowerPlant(name: "Cf6"),
            PowerPlant(name: "Pw4060")],
                      altitude: "11000-12000m", totalSeat: 188, businessClass: 28, enonomyClass: 160, destinatinations: [Destination(name: "Brisbane"),
                                             Destination(name: "Hong Kong"),
                                             Destination(name: "Singapore")])
        ]

    }
}

