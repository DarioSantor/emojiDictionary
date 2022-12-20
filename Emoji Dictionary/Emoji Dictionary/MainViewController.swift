//
//  MainViewController.swift
//  Emoji Dictionary
//
//  Created by Santos, Dario Ferreira on 20/12/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var tableView = UITableView()
    let dataModel = ["🚓", "🎮", "⛪️", "🔋", "👻", "🏎"]

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        configureTableView()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    private func style() {
        view.backgroundColor = .systemRed
    }
    
    func configureTableView() {
        // 1 - add table to view
        view.addSubview(tableView)
        // 2 - set delegates
        setTableViewDelegates()
        // 3 - set row height
        tableView.rowHeight = 50
        // 4 - register cells
        // 5 - set constraints
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // how many rows???
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    // what goes inside each row???
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(dataModel[indexPath.row]) - \(dataModel[indexPath.row].unicodeScalars.first!.properties.name!.capitalized)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsVC = DetailsViewController()
        detailsVC.emojiImage.text = dataModel[indexPath.row]
        detailsVC.modalPresentationStyle = .fullScreen
        self.present( detailsVC,  animated: true,  completion: nil)
    }
}
