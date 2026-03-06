//
//  Models.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 09/12/2025.
//

import Foundation

import Foundation

struct StudentsResponse: Decodable {
    let records: [StudentRecord]
}

struct StudentRecord: Decodable, Identifiable {
    let id: String
    let createdTime: Date
    let fields: Student
}

struct Student: Decodable ,Identifiable{
    var id = UUID()
    var name: String
    var house: House
    var year: Int
    var isPrefect: Bool?
    var picture: [Attachment]?
    var description: String
    var patronus: String

    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case house = "House"
        case year = "Year"
        case isPrefect = "IsPrefect"
        case picture = "Photo"
        case description = "Description"
        case patronus = "Patronus"
    }
}

enum House: String, CaseIterable, Identifiable, Decodable {
    var id: RawValue { rawValue }
    case gryffindor = "Gryffondor"
    case ravenclaw = "Serdaigle"
    case slytherin = "Serpentard"
    case hufflepuff = "Poufsouffle"
}

struct Attachment: Decodable {
    let id: String
    let width: Int?
    let height: Int?
    let url: URL
    let filename: String?
    let size: Int?
    let type: String?
    let thumbnails: Thumbnails?
}

struct Thumbnails: Decodable {
    let small: ThumbnailVariant?
    let large: ThumbnailVariant?
    let full: ThumbnailVariant?
}

struct ThumbnailVariant: Decodable {
    let url: URL
    let width: Int?
    let height: Int?
}
