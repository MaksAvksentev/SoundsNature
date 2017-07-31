//
//  SoundDataSource.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

enum SoundStoreType {
    
    case Sounds
    case SavedTracks
    case Undefined
}

protocol SoundDataSourceProtocol: class {

    func typeForSoundDataSource() -> SoundStoreType
}

class SoundDataSource: NSObject, UITableViewDataSource {

    var type: SoundStoreType = .Undefined
    weak var delegate: SoundDataSourceProtocol?
    
    var idsArray = [String]()
    
    override init() {
        
        super.init()
    }
    
    init(forType type: SoundStoreType) {
    
        self.type = type
        super.init()
        
    }
    
    //MARK: - Main
    func initialize() {
    
        guard let type = self.delegate?.typeForSoundDataSource() else {
        
            return
        }
        
        self.type = type
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        return UITableViewCell()
    }

}
