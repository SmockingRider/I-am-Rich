//
//  ViewController.swift
//  IamRich
//
//  Created by Seidaly Rustem on 25.12.2022.
//


import UIKit
import SnapKit

final class ViewController: UIViewController {
    private  var extraLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times new Roman",size:70)
        label.text = "I am Rich"
        label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        return label
    }()
    
    private  var myDiamond: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.yellow
        button.layer.cornerRadius = 20
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Get Money", for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        return button
    }()
    
    private  var accountMoney: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times new Roman",size:30)
        label.text = "Your money:"
        label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background1")!)
        setupViews()
        setupConstraints()
    }
    
    @objc func buttonTapped() {
        accountMoney.text = "Your money: \(Int.random(in:1000..<10000))$"
        
    }
}

//MARK: - Setup and Constaints

private extension ViewController {
    
    func setupViews() {
        view.addSubview(myDiamond)
        view.addSubview(extraLabel)
        view.addSubview(button)
        view.addSubview(accountMoney)
    }
    
    func setupConstraints() {
        extraLabel.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top)
        }
        
        myDiamond.snp.makeConstraints {make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.height.equalTo(300)
        }
        
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.bottom.equalToSuperview().inset(80)
            make.height.equalTo(40)
        }
        
        accountMoney.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.bottom.equalToSuperview().inset(160)
            make.height.equalTo(80)
            make.trailing.equalToSuperview().inset(60)
            make.leading.equalToSuperview().inset(60)
        }
    }
}
