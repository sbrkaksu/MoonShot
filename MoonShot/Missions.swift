//
//  Missions.swift
//  MoonShot
//
//  Created by Berk Aksu on 12.01.2024.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        self.launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
