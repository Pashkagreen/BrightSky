//
//  SettingsView.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//

import UIKit

final class SettingsView: UIView, UITableViewDelegate, UITableViewDataSource {
    
        private var viewModel: SettingsViewViewModel? {
            didSet {
                tableView.reloadData()
            }
        }
            
        private let tableView: UITableView = {
                let table = UITableView()
                
                table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
                table.translatesAutoresizingMaskIntoConstraints = false
                
                return table
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(tableView)
            tableView.delegate = self
            tableView.dataSource = self
            
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: topAnchor),
                tableView.leftAnchor.constraint(equalTo: leftAnchor),
                tableView.rightAnchor.constraint(equalTo: rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError()
        }
        
        public func configure(with viewModel: SettingsViewViewModel) {
            self.viewModel = viewModel
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return viewModel?.options.count ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            if let viewModel {
                cell.textLabel?.text = viewModel.options[indexPath.row].title
            }
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
