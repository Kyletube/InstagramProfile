//
//  UserModel+CoreDataProperties.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/22.
//
//

import Foundation
import CoreData


extension UserModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserModel> {
        return NSFetchRequest<UserModel>(entityName: "UserModel")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int64

}

extension UserModel : Identifiable {

}
