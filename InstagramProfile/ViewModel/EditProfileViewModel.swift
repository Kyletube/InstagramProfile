//
//  EditProfileViewModel.swift
//  InstagramProfile
//
//  Created by Kyle on 2023/09/22.
//

import Foundation
import CoreData

class EditProfileViewModel {
    
    let context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func saveUserData(name: String?, age: Int64) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserModel")
        
        do {
            if let result = try context.fetch(request) as? [UserModel], let user = result.first {
                user.name = name
                user.age = age
            } else {
                let newUser = UserModel(context: self.context)
                newUser.name = name
                newUser.age = age
            }
            
            try self.context.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func fetchUserData() -> (String?, Int64?) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserModel")
        
        do {
            if let result = try context.fetch(request) as? [UserModel], let user = result.first {
                return (user.name, user.age)
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        return (nil, nil)
    }
}
