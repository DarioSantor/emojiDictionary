//
//  DetailsViewController.swift
//  Emoji Dictionary
//
//  Created by Santos, Dario Ferreira on 20/12/2022.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    var emojiImage = UILabel()
    let definition = UILabel()
    let dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DetailsViewController {
    func style() {
        emojiImage.translatesAutoresizingMaskIntoConstraints = false
        emojiImage.font = .systemFont(ofSize: 250)
        emojiImage.textAlignment = .center
        
        definition.translatesAutoresizingMaskIntoConstraints = false
        definition.text = "fngdfgnfdnfhgmghmnghmnghmghmfghmfgm tyjytjtyj rer rhjgnfgn"
        definition.numberOfLines = 0
        definition.font = .systemFont(ofSize: 20)
        definition.textAlignment = .center
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.backgroundColor = .systemCyan
        dismissButton.layer.cornerRadius = 5
        dismissButton.addTarget(self, action: #selector(closeView), for: .touchUpInside)
    }
    
    func layout() {
        view.addSubview(emojiImage)
        view.addSubview(definition)
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            emojiImage.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 20),
            view.centerXAnchor.constraint(equalTo: emojiImage.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            definition.topAnchor.constraint(equalToSystemSpacingBelow: emojiImage.bottomAnchor, multiplier: 3),
            definition.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: definition.trailingAnchor, multiplier: 3)
        ])
        
        NSLayoutConstraint.activate([
            dismissButton.topAnchor.constraint(equalToSystemSpacingBelow: definition.bottomAnchor, multiplier: 3),
            dismissButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 9),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: dismissButton.trailingAnchor, multiplier: 9)
        ])
        
    }
    
    @objc func closeView() {
        self.dismiss(animated: true, completion: nil)
    }
}