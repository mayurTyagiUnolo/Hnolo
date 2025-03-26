//
//  SomeThingCDHelper.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//

import CoreData

class SomeThingCDHelper{
    let mainContext: NSManagedObjectContext
    
    static let shared = SomeThingCDHelper()
    
    private init(){
        self.mainContext = CoreDataStack.sharedManager.persistentContainer.viewContext
    }
    
    func saveBeat(lat: String, lon: String, date: Date, id: String){
        mainContext.performAndWait {
            let locationA = SomethingCD(context: mainContext)
            
            locationA.lat = lat
            locationA.lon = lon
            locationA.date = date
            locationA.id = id
            
            do{
                try mainContext.save()
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchAllLocation() -> [SomethingCD]{
        var beatCDModelList = [SomethingCD]()
        
        mainContext.performAndWait {
            let fetchRequest = SomethingCD.fetchRequest()
            do {
                beatCDModelList = try mainContext.fetch(fetchRequest)
            } catch {
                let describingString = String(describing: error)
                print(describingString)
                print(error.localizedDescription)
            }
        }
        return beatCDModelList
    }
    
}
