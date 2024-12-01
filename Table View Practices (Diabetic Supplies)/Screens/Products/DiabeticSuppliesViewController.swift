//
//  DiabeticSuppliesControllerViewController.swift
//  Table View Practices (Diabetic Supplies)
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class DiabeticSuppliesViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet var SuppliesTableView: UITableView!
    //MARK: Properties
    var products:[Product] = []
    //MARK: LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}
extension DiabeticSuppliesViewController {
    private func configureUI() {
        products = [Product(Image: UIImage(named: "Diabetic.jpg")!, title: "Egyptian Blood Glucose", pirce: "300.0")]
        configureTableView(with: SuppliesTableView)
    }
    private func configureTableView(with table:UITableView){
        table.delegate = self
        table.dataSource = self
        table.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
    }
}
extension DiabeticSuppliesViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
extension DiabeticSuppliesViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as! ProductTableViewCell
        let product = products[indexPath.row]
        cell.configure(with: product)
        return cell
    }
    
    
}
