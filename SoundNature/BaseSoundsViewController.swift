//
//  BaseSoundsViewController.swift
//  SoundNature
//
//  Created by iMac_1 on 8/1/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

class BaseSoundsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataSource = SoundDataSource()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.configureTableView()
    }
    
    //MARK: - Private
    private func configureTableView() {
    
        self.tableView.register(SoundTableViewCell.nib(), forCellReuseIdentifier: SoundTableViewCell.className)
    }

}
