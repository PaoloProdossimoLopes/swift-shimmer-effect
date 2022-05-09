//
//  ViewController.swift
//  shimmertest
//
//  Created by Paolo Prodossimo Lopes on 07/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    private(set) lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Title", for: .normal)
        button.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        button.tintColor = .red
        button.setTitleColor(.red, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        commomInit()
    }
    
    private func commomInit() {
        configureHierarcy()
        configureConstraints()
        configureStyle()
    }
    
    private func configureHierarcy() {
        view.addSubview(button)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func configureStyle() {
        button.setTemplateWithSubviews(true, viewBackgroundColor: .systemBackground)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.button.setTemplateWithSubviews(false)
        }
    }
}
