//
//  ViewController.swift
//  tableViewDemo
//
//  Created by 吳得人 on 2017/10/9.
//  Copyright © 2017年 吳得人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var numberArray = ["第一行", "第二行", "第三行", "第四行", "第五行"]
    var contentArray = ["第一行", "第二行", "第三行", "第四行", "第五行"]
    var otherContentArray = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        contentArray[indexPath.row] = contentArray[indexPath.row] == numberArray[indexPath.row] ? otherContentArray[indexPath.row] : numberArray[indexPath.row]
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if contentArray[indexPath.row] == numberArray[indexPath.row] {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = contentArray[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MoreCell", for: indexPath) as? CustomizeTableViewCell
            cell?.contentLabel.text = numberArray[indexPath.row]
            cell?.contentOneLabel.text = "\(numberArray[indexPath.row])內容一"
            cell?.contentTwoLabel.text = "\(numberArray[indexPath.row])內容二"
            return cell!
        }
        
    }
    
}
