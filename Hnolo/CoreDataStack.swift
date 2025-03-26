//
//  CoreDataStack.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//

import Foundation
import CoreData

class CoreDataStack: ObservableObject{
    static let sharedManager = CoreDataStack()
    var persistentContainer: NSPersistentContainer
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "Unolo")
        persistentContainer.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                print("Crash CD (PersistentContainerMainStack) - \(error.localizedDescription), userInfo: \(error.userInfo)")
            }
        }
    }
    
    func saveContext() {
        let context = self.persistentContainer.viewContext
        context.performAndWait {
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    let nserror = error as NSError
                }
            }
        }
    }
}
