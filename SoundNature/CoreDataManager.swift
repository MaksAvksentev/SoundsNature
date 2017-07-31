//
//  CoreDataManager.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import CoreData

class CoreDataManager: NSObject {

    private static var sharedManager = CoreDataManager()
    
    static var shared: CoreDataManager {
    
        return sharedManager
    }
    
    private let persistentContainer = NSPersistentContainer(name: "SoundNature")
    
    var viewContext: NSManagedObjectContext {
    
        return self.persistentContainer.viewContext
    }
    
    var backgroundContext: NSManagedObjectContext {
    
        return self.persistentContainer.newBackgroundContext()
    }
    
    private override init() {
        
        super.init()
    }
    
    func initialize(completionHandler: @escaping (Bool) -> Void = {_ in}) {
    
        self.persistentContainer.loadPersistentStores(completionHandler: {_, error in
        
            guard error == nil else {
            
                //FIXME: log error here
                completionHandler(false)
                return
            }
            
            completionHandler(true)
        })
    }
    
    func saveContext () {
        
        let context = self.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}
