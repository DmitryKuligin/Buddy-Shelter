//
//  PartnerModel.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 24.02.2022.
//

import Foundation

struct PetModel : Identifiable{
    let id = UUID()
    let name : String
    let age : Int
    let sex : Bool
    let photo : String
    let description : String
    let number : String
}

