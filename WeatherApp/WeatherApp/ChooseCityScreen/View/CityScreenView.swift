//
//  CityScreenView.swift
//  WeatherApp
//
//  Created by Daniil on 1.02.23.
//

import UIKit

class CityScreenView: UIView {

    let infoButton: UIButton = {
        
        let button = UIButton()
        
        button.setImage(UIImage(named: "infoButton"), for: .normal)
        button.setTitle( "", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let cityTextField: UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Выбирете город"
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 15
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let chooseCityButton: UIButton = {
        
        let button = UIButton()
        
        button.setTitle( "Узнать погоду", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setup()
        backgroundColor = UIColor(red: 0.385, green: 0.613, blue: 0.954, alpha: 1)
        updateConstraints()
     }

     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    func setup() {
        addSubview(infoButton)
        addSubview(cityTextField)
        addSubview(chooseCityButton)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        infoButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        infoButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        infoButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        infoButton.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
        
        cityTextField.widthAnchor.constraint(equalToConstant: 340).isActive = true
        cityTextField.heightAnchor.constraint(equalToConstant: 54).isActive = true
        cityTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        cityTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        chooseCityButton.widthAnchor.constraint(equalToConstant: 173).isActive = true
        chooseCityButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        chooseCityButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        chooseCityButton.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 34).isActive = true
        
    }
}
