////
////  Data.swift
////  TestTechniqueExtended26
////
////  Created by Cindy Bajoni on 09/12/2025.
////

import Foundation
//
//var students: [Student] = [
//
//    // MARK: - Gryffondor
//
//    Student(
//        name: "Harry Potter",
//        house: .gryffindor,
//        year: 6,
//        isPrefect: false,
//        picture: "harry",
//        description: "M. Potter se distingue par un courage constant, une loyauté sans faille envers ses camarades et une propension notable à se trouver au cœur d’événements extraordinaires. Doté d’un instinct vif et d’un sens moral affirmé, il fait preuve d’une grande détermination face à l’adversité. Son parcours scolaire, parfois peu conventionnel, révèle néanmoins un sorcier au potentiel certain, particulièrement apte à la défense contre les forces du mal.",
//        patronus: "Cerf"
//    ),
//
//    Student(
//        name: "Hermione Granger",
//        house: .gryffindor,
//        year: 6,
//        isPrefect: true,
//        picture: "hermione",
//        description: "Mlle Granger se distingue par une intelligence remarquable, une rigueur académique exemplaire et une maîtrise précoce des sortilèges théoriques et pratiques. Travailleuse infatigable et dotée d’une mémoire exceptionnelle, elle fait preuve d’un grand sens des responsabilités. Son attachement aux règles est contrebalancé par un courage certain et une loyauté indéfectible envers ses amis, faisant d’elle un pilier aussi fiable qu’ingénieux face aux situations les plus complexes.",
//        patronus: "Loutre"
//    ),
//
//    Student(
//        name: "Ron Weasley",
//        house: .gryffindor,
//        year: 6,
//        isPrefect: true,
//        picture: "ron",
//        description: "M. Weasley se distingue par une loyauté sincère, un courage qui s’affirme pleinement dans l’adversité et un sens de l’humour appréciable au sein de la vie scolaire. Issu d’une ancienne famille de sorciers, il possède une bonne connaissance du monde magique et fait preuve d’un esprit stratégique notable, notamment lors des parties d’échecs sorciers. Bien que parfois sujet au doute, il demeure un camarade fiable et dévoué, dont la valeur se révèle dans les moments décisifs.",
//        patronus: "Jack Russell"
//    ),
//
//    Student(
//        name: "Neville Londubat",
//        house: .gryffindor,
//        year: 6,
//        isPrefect: false,
//        picture: "neville",
//        description: "Discret mais déterminé, il révèle un grand courage.",
//        patronus: "Lion"
//    ),
//
//    Student(
//        name: "Ginny Weasley",
//        house: .gryffindor,
//        year: 5,
//        isPrefect: false,
//        picture: "ginny",
//        description: "Déterminée et talentueuse, forte personnalité.",
//        patronus: "Cheval"
//    ),
//
//    // MARK: - Poufsouffle
//
//    Student(
//        name: "Hannah Abbott",
//        house: .hufflepuff,
//        year: 6,
//        isPrefect: true,
//        picture: "hannah",
//        description: "Bienveillante et sérieuse, très respectée dans sa maison.",
//        patronus: "Inconnu"
//    ),
//
//    Student(
//        name: "Ernie Macmillan",
//        house: .hufflepuff,
//        year: 6,
//        isPrefect: true,
//        picture: "ernie",
//        description: "M. Macmillan se distingue par un profond respect des règles, un sens aigu de la justice et une loyauté affirmée envers l’institution de Poudlard. Consciencieux et appliqué dans son travail scolaire, il attache une grande importance à l’équité et à l’honneur. Bien que parfois excessif dans ses certitudes, il fait preuve d’une intégrité sincère et d’un courage moral réel, reflétant avec sérieux les valeurs de sa maison.",
//        patronus: "Sanglier"
//    ),
//
//    Student(
//        name: "Susan Bones",
//        house: .hufflepuff,
//        year: 6,
//        isPrefect: false,
//        picture: "susan",
//        description: "Discrète et loyale, issue d’une grande famille de sorciers.",
//        patronus: "Inconnu"
//    ),
//
//    // MARK: - Serdaigle
//
//    Student(
//        name: "Luna Lovegood",
//        house: .ravenclaw,
//        year: 5,
//        isPrefect: false,
//        picture: "luna",
//        description: "Rêveuse et originale, dotée d’une grande sagesse.",
//        patronus: "Lièvre"
//    ),
//
//    Student(
//        name: "Cho Chang",
//        house: .ravenclaw,
//        year: 7,
//        isPrefect: false,
//        picture: "cho",
//        description: "Élève brillante et sportive.",
//        patronus: "Cygne"
//    ),
//
//    Student(
//        name: "Padma Patil",
//        house: .ravenclaw,
//        year: 6,
//        isPrefect: true,
//        picture: "padma",
//        description: "Sérieuse et réfléchie, préfète de sa maison.",
//        patronus: "Inconnu"
//    ),
//
//    // MARK: - Serpentard
//
//    Student(
//        name: "Drago Malfoy",
//        house: .slytherin,
//        year: 6,
//        isPrefect: true,
//        picture: "drago",
//        description: "M. Malfoy se distingue par une grande fierté de son héritage familial et une ambition marquée. Doté d’un esprit vif et d’une assurance affichée, il cherche fréquemment à asseoir son influence parmi ses pairs. Son comportement, parfois hautain et provocateur, masque néanmoins une sensibilité et une vulnérabilité notables face aux attentes qui pèsent sur lui. Son parcours à Poudlard témoigne d’un caractère en tension entre loyauté familiale et choix personnels.",
//        patronus: "Loup"
//    ),
//
//    Student(
//        name: "Pansy Parkinson",
//        house: .slytherin,
//        year: 6,
//        isPrefect: true,
//        picture: "pansy",
//        description: "Sarcastique et très attachée à sa maison.",
//        patronus: "Inconnu"
//    ),
//
//    Student(
//        name: "Blaise Zabini",
//        house: .slytherin,
//        year: 6,
//        isPrefect: false,
//        picture: "blaise",
//        description: "Calme et distant, issu d’une famille influente.",
//        patronus: "Inconnu"
//    )
//]
//
//
//var studentSorted = students.sorted {
//    $0.name < $1.name
//}



    let json = """
    {
      "records": [
        {
          "id": "recAO3IrLT7rTjhLz",
          "createdTime": "2026-02-12T20:40:24.000Z",
          "fields": {
            "Name": "Hannah Abbott",
            "Year": 6,
            "Patronus": "Biche",
            "Photo": [],
            "Description": "Mlle Abbott se distingue...",
            "House": "Poufsouffle",
            "IsPrefect": true
          }
        }
      ]
    }
    """

    let studentTest: Student = {
        let data = Data(json.utf8)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let response = try? decoder.decode(StudentsResponse.self, from: data)
        return response?.records.first?.fields ?? Student(
            name: "Fallback",
            house: .hufflepuff,
            year: 6,
            isPrefect: true,
            picture: nil,
            description: "Fallback",
            patronus: "Biche"
        )
    }()




