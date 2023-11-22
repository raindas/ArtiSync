//
//  HomeVM.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import Foundation

final class HomeVM:ObservableObject {
    let posts = Bundle.main.decode([HomePost].self, from: "ArtiSyncStaticDB.json")!
}
