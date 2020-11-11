//
//  ViewController.swift
//  learn_mvc_01
//
//  Created by IndratS on 11/11/20.
//  Copyright © 2020 IndratSaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTable: UITableView!
    
    var data: [MVCModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "MVC"
        myTable.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.identifier)
        fetchData()
        sett()
        
    }
    
    private func sett(){
        myTable.delegate = self
        myTable.dataSource = self
    }

    fileprivate func fetchData(){
        Service.fetchMVCData { (result) in
            switch result {
                
            case .success(let data):
                self.data = data
                self.myTable.reloadData()
                
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.mcvModel = data[indexPath.row]
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
