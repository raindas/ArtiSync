//
//  HomeModel.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import Foundation

struct HomePost:Codable, Identifiable, Hashable {
    let id: Int
    let img: String
    let dp: String
    let title: String
    let username: String
}
