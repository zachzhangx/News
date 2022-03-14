//
//  PostData.swift
//  News
//
//  Created by Zhang Xu on 2022/3/13.
//

import Foundation

struct Results : Decodable{
    let hits : [Post]
}

struct Post : Decodable, Identifiable{
    var id : String{
        return objectID
    }
    
    let objectID : String
    let points : Int
    let title : String
    let url : String
}
